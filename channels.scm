;; (
;;  list 
;; (channel
;;          (name 'guix)
;;          (url "https://codeberg.org/miramar/guix")
;;          ;; (url (string-append "file://" (getenv "HOME") "/Projects/guix"))
;;          (branch "future"))
;; )
(cons*
(channel
         (name 'longleaf)
         (url "https://github.com/hesterjeng/longleaf-channel"))
(channel
         (name 'nonguix)
         (url "https://gitlab.com/nonguix/nonguix")
         (branch "master"))
;; ()
%default-channels
)
