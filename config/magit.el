;; Require magit
;; https://github.com/philjackson/magit
(add-to-list 'load-path (expand-path "plugins/magit"))
(require 'magit)


;; For easy access
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "s-q") 'magit-status)


;; mo-git-blame
;; http://www.bunkus.org/blog/2009/10/an-interactive-iterative-git-blame-mode-for-emacs/
;; (add-to-list 'load-path (expand-path "plugins/mo-git-blame"))
;; (autoload 'mo-git-blame-file "mo-git-blame" nil t)
;; (autoload 'mo-git-blame-current "mo-git-blame" nil t)
;; (defalias 'git-blame-file 'mo-git-blame-file)
;; (defalias 'git-blame 'mo-git-blame-current)

