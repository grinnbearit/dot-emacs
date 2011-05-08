;; Insert fancy emacs quotes here

;; "Emacs outshines all other editing software in approximately the
;; same way that the noonday sun does the stars. It is not just bigger
;; and brighter; it simply makes everything else vanish."
;; -Neal Stephenson, "In the Beginning was the Command Line"
;; -https://github.com/technomancy/emacs-starter-kit/blob/master/init.el


;; external repos and downloads
(add-to-list 'load-path "~/.emacs.d/plugins")
;; http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)


(add-to-list 'load-path "~/.emacs.d/config")  ; custom configurations
(load "theme")				      ; appearance
(load "defaults")			      ; defaults
(load "magit")				      ; magit
