;; (cons*
 ;; (channel
 ;;   (name 'longleaf)
 ;;   (url "https://github.com/hesterjeng/longleaf-channel")
 ;; )
;;  ;; (channel
;;  ;;   (name 'scrambler-future)
;;  ;;   (url "https://codeberg.org/scrambler/guix")
;;  ;;   (branch "future")
;;  ;; )
;; %default-channels)

(append %default-channels
	(list
	 (channel
	   (name 'longleaf)
	   (url "https://github.com/hesterjeng/longleaf-channel")
	   )
	 )
	)
