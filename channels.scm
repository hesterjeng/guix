(
 list 
(channel
         (name 'guix)
         ;; (url "https://codeberg.org/miramar/guix")
         (url (string-append "file://") (getenv "HOME") "/Projects/guix")
         (branch "future")))
;; (channel
;;          (name 'nonguix)
;;          (url "https://gitlab.com/nonguix/nonguix")
;;          (branch "master"))
;; (cons*
;; (channel
;;          (name 'longleaf)
;;          (url "https://github.com/hesterjeng/longleaf-channel"))
;;        %default-channels)
