;; Insert fancy emacs quotes here

;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"
;; -https://github.com/technomancy/emacs-starter-kit/blob/master/init.el


(defun expand-path (path)
  (concat user-emacs-directory path))


(add-to-list 'load-path (expand-path "config"))  ; custom configurations
(load "theme")				         ; appearance
(load "defaults")                                ; defaults
(load "magit")				         ; magit
(load "package")			         ; package manager
(load "auto-complete")				 ; auto-complete
(load "clojure")				 ; clojure
(load "clojurescript")				 ; clojurescript
(load "erlang")					 ; erlang
(load "octave")					 ; octave
(load "scss")					 ; scss
(load "ess")					 ; emacs speaks statistics
