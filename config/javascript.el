;; Require js2-mode
;; https://code.google.com/p/js2-mode/
(add-to-list 'load-path (expand-path "plugins/js2"))
(require 'js2-mode)


;; Prajwalit Bhopale's js config
;; https://github.com/prajwalit/dotemacs/blob/master/packs/programming/config/js-conf.el

(defun js-mode-changes ()
  (setq js-indent-level 2)
  (font-lock-add-keywords
   'js-mode `(("\\(function *\\)("
               (0 (progn (compose-region (match-beginning 1)
                                         (match-end 1) "ƒ")
                         nil)))))
  (electric-pair-mode t))


(add-hook 'js-mode-hook 'js-mode-changes)

(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))
