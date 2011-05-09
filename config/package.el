;; Package


;; http://repo.or.cz/w/emacs.git/blob_plain/1a0a666f941c99882093d7bd08ced15033bc3f0c:/lisp/emacs-lisp/package.el
(add-to-list 'load-path "~/.emacs.d/plugins/package")
(require 'package)


;; External repos
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)


;; Initialize installed packages
(package-initialize)