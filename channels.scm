(cons*
 ;; (channel
 ;;  (name 'longleaf)
 ;;  (url (string-append "file://" (getenv "HOME") "/Projects/longleaf-channel"))
 ;;  (branch "master"))
 (channel
          (name 'longleaf)
          (url "https://github.com/hesterjeng/longleaf-channel")
          (branch "master")
	 )
 (channel
  (name 'nonguix)
  (url "https://gitlab.com/nonguix/nonguix")
  (branch "master")
  )
 %default-channels
 )

 ;; )
