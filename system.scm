;; This is an operating system configuration generated
;; by the graphical installer.
;;
;; Once installation is complete, you can learn and modify
;; this file to tweak the system configuration, and pass it
;; to the 'guix system reconfigure' command to effect your
;; changes.


;; Indicate which modules to import to access the variables
;; used in this configuration.
(use-modules (gnu)
             (nongnu packages linux)
             (nongnu system linux-initrd))
(use-service-modules cups desktop networking ssh xorg pm)

(operating-system
  (kernel linux)
  (initrd microcode-initrd)
  (firmware (list linux-firmware))
  (locale "en_US.utf8")
  (timezone "America/Chicago")
  (keyboard-layout (keyboard-layout "us"))
  (host-name "thinkpad")

  ;; The list of user accounts ('root' is implicit).
  (users (cons* (user-account
                  (name "john")
                  (comment "John")
                  (group "users")
                  (home-directory "/home/john")
                  (supplementary-groups '("wheel" "netdev" "audio" "video" "lp")))
                %base-user-accounts))

  ;; Packages installed system-wide.  Users can also install packages
  ;; under their own account: use 'guix search KEYWORD' to search
  ;; for packages and 'guix install PACKAGE' to install a package.
  (packages (append (list (specification->package "i3-wm")
                          (specification->package "i3status")
                          (specification->package "niri")
                          (specification->package "xorg-server-xwayland")
                          (specification->package "xwayland-satellite")
                          (specification->package "mesa")
                          (specification->package "mesa-utils")
                          (specification->package "alsa-utils")
                          (specification->package "vulkan-loader")
                          (specification->package "vulkan-tools")
                          (specification->package "xdg-desktop-portal")
                          (specification->package "tlp")
                          (specification->package "acpi")
                          (specification->package "emacs-exwm")
                          (specification->package "font-openmoji")
                          (specification->package "font-gnu-freefont")
                          (specification->package "font-liberation")
                          (specification->package "bluez")
                          (specification->package "alacritty")
                          (specification->package "dmenu")
                          (specification->package "st")
                          (specification->package "pulseaudio")) %base-packages))

  ;; Below is the list of system services.  To search for available
  ;; services, run 'guix system search KEYWORD' in a terminal.
  (services
   (cons* (service tlp-service-type)
          (service thermald-service-type)
          (service bluetooth-service-type
                   (bluetooth-configuration
                    (auto-enable? #t)))
          ;; Increase locked memory limit for io_uring (needed by Eio/OCaml)
          ;; Default 8KB is too low for modern io_uring applications
          (service pam-limits-service-type
                   (list
                    (pam-limits-entry "*" 'both 'memlock 65536)))  ; 64 MB for all users
          (modify-services %desktop-services
            (elogind-service-type config =>
              (elogind-configuration
                (inherit config)
                (handle-lid-switch 'ignore))))))
  (bootloader (bootloader-configuration
                (bootloader grub-efi-bootloader)
                (targets (list "/boot/efi"))
                (keyboard-layout keyboard-layout)))
  (mapped-devices (list (mapped-device
                          (source (uuid
                                   "742ab2f7-d208-4b2a-91f3-48614e77d30a"))
                          (target "cryptroot")
                          (type luks-device-mapping))))

  ;; The list of file systems that get "mounted".  The unique
  ;; file system identifiers there ("UUIDs") can be obtained
  ;; by running 'blkid' in a terminal.
  (file-systems (cons* (file-system
                         (mount-point "/boot/efi")
                         (device (uuid "ACCD-405A"
                                       'fat32))
                         (type "vfat"))
                       (file-system
                         (mount-point "/")
                         (device "/dev/mapper/cryptroot")
                         (type "ext4")
                         (dependencies mapped-devices)) %base-file-systems)))
