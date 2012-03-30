;; Require magit
;; https://github.com/philjackson/magit
(add-to-list 'load-path (expand-path "plugins/magit"))
(require 'magit)


;; For easy access
(global-set-key (kbd "C-x g") 'magit-status)
