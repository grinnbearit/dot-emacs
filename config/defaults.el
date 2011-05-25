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


;; Prevent the startup message from showing up
;; http://stackoverflow.com/questions/3869159/how-do-i-kill-the-gnu-emacs-buffer-when-emacs-starts
(setq inhibit-startup-message t)


;; System to emacs copy-paste
;; http://stackoverflow.com/questions/64360/how-to-copy-text-from-emacs-to-another-application-on-linux
(setq x-select-enable-clipboard t)


;; Save cursor position in a file
;; http://www.emacswiki.org/emacs/SavePlace
(require 'saveplace)
(setq-default save-place t)


;; Uniquify buffer names
;; http://www.gnu.org/software/libtool/manual/emacs/Uniquify.html
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)


;; Initialize ido mode
;; http://www.emacswiki.org/emacs/InteractivelyDoThings
(require 'ido)
(ido-mode t)


;; Highlight parens
;; http://www.emacswiki.org/emacs/ShowParenMode
(show-paren-mode t)
(setq show-paren-delay 0)


;; Indent whole buffer
;; http://emacsblog.org/2007/01/17/indent-whole-buffer/
(defun indent-whole-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(global-set-key (kbd "C-c n") 'indent-whole-buffer)


;; Set default browser
;; http://www.emacswiki.org/cgi-bin/wiki/BrowseUrl#toc9
(setq browse-url-browser-function 'browse-url-generic
          browse-url-generic-program "google-chrome")