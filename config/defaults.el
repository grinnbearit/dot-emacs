;; Sets basic emacs defaults

;; Prevent file backups from being taken, use version control instead
;; http://www.rpi.edu/dept/acs/rpinfo/common/Computing/Consulting/Software/Emacs/Hints/backup.html
(setq make-backup-files nil)


;; Start emacs in fullscreen mode
;; http://ubuntuforums.org/showpost.php?s=de298ab26968dce6fced91a444889cc3&p=5570302&postcount=5
(defun toggle-fullscreen ()
  (interactive)
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))
(toggle-fullscreen)