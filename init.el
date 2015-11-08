;; Insert fancy emacs quotes here

;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"
;; -https://github.com/technomancy/emacs-starter-kit/blob/master/init.el


(defun expand-path (path)
  (concat user-emacs-directory path))


(add-to-list 'load-path (expand-path "config"))  ; custom configurations
(load "defaults")                                ; defaults
(load "theme")                                   ; appearance
(load "paxedit-mode")                            ; paxedit
(load "magit-config")                            ; magit
(load "auto-complete")                           ; auto-complete
(load "clojure")                                 ; clojure
(load "scss")                                    ; scss
(load "markdown")                                ; markdown
(load "web")                                     ; web
(load "ledger-config")                           ; ledger-cli
