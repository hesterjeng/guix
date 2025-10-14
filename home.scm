;; This is a sample Guix Home configuration which can help setup your
;; home directory in the same declarative manner as Guix System.
;; For more information, see the Home Configuration section of the manual.
(define-module (guix-home-config)
  #:use-module (gnu home)
  #:use-module (gnu home services)
  #:use-module (gnu home services shells)
  #:use-module (gnu home services shepherd)
  #:use-module (gnu home services ssh)
  #:use-module (gnu services ssh)
  #:use-module (gnu home services desktop)
  #:use-module (gnu home services mcron)
  #:use-module (gnu services)
  #:use-module (gnu services shepherd)
  #:use-module (gnu system shadow)
  #:use-module (gnu packages)
  #:use-module (gnu packages emacs)
  #:use-module (guix gexp))

;; Load package lists
(load (string-append (dirname (current-filename)) "/emacs.scm"))
(load (string-append (dirname (current-filename)) "/manifest.scm"))

(define home-config
  (home-environment
    ;; Packages
    (packages (specifications->packages
               (append emacs-packages
                       general-packages)))

    (services
      (append
        (list
          ;; Bash shell configuration
          (service home-bash-service-type
                   (home-bash-configuration
                    (aliases
                     '(("ll" . "ls -shalt")
                       ("la" . "ls -lah")
		       ("cc" . "gcc")
                       (".." . "cd ..")
                       ("..." . "cd ../..")
                       ("claude" . "/home/john/.npm/prefix/bin/claude")
                       ("gs" . "git status")
                       ("gd" . "git diff")
                       ("e" . "emacs -nw")
                       ("gl" . "git log --oneline --graph --decorate")))
                    (environment-variables
                     '(("EDITOR" . "emacsclient -c")
                       ("VISUAL" . "emacsclient -c")
                       ("HISTSIZE" . "10000")
                       ("HISTFILESIZE" . "20000")
                       ("HISTCONTROL" . "ignoreboth:erasedups")
                       ("PATH" . "$HOME/.npm/prefix/bin:$PATH")))
		    ))
          ;(service home-fish-service-type)
          ;(service home-zsh-service-type)

          ;; SSH agent service
          (service home-ssh-agent-service-type)

          ;; SSH client configuration - automatically add keys to agent
          (service home-openssh-service-type
                   (home-openssh-configuration
                    (add-keys-to-agent "yes")))

          ;; D-Bus service - needed for inter-process communication
          (service home-dbus-service-type)

          ;; Mcron service - scheduled job execution (cron-like)
          (service home-mcron-service-type
                   (home-mcron-configuration
                    (jobs (list
                           ;; Example: Clean up old files in ~/.cache/guix daily at 3am
                           #~(job "0 3 * * *"
                                  (lambda ()
                                    (system* "find" (string-append (getenv "HOME") "/.cache/guix")
                                             "-type" "f" "-mtime" "+30" "-delete")))))))

          (service home-files-service-type
           `((".guile" ,%default-dotguile)
             (".Xdefaults" ,%default-xdefaults)))

          (service home-xdg-configuration-files-service-type
           `(("gdb/gdbinit" ,%default-gdbinit)
             ("nano/nanorc" ,%default-nanorc)))

          ;; (simple-service 'emacs-server
          ;;                 home-shepherd-service-type
          ;;                 (list (shepherd-service
          ;;                        (provision '(emacs-server))
          ;;                        (start #~(make-forkexec-constructor
          ;;                                 (list #$(file-append emacs "/bin/emacs")
          ;;                                       "--fg-daemon")))
          ;;                        (stop #~(make-kill-destructor))
          ;;                        (documentation "Emacs server daemon"))))
	  )

        %base-home-services))))

home-config
