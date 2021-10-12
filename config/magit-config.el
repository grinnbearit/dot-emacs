;; Magit
;; https://magit.vc/manual/magit/Installing-from-Melpa.html#Installing-from-Melpa
(straight-use-package 'magit)
(require 'magit)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch)
(global-set-key (kbd "C-c g") 'magit-file-dispatch)
