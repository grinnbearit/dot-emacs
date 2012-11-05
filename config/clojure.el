;; Clojure


;; Enable paredit in clojure
(defun clojure-paredit-hook () (require 'paredit) (paredit-mode 1))
(add-hook 'clojure-mode-hook 'clojure-paredit-hook)
(add-hook 'clojure-mode-hook 'auto-complete-mode)


;; https://github.com/kingtim/nrepl.el
(add-hook 'nrepl-interaction-mode-hook 'nrepl-turn-on-eldoc-mode)


;; https://github.com/purcell/ac-nrepl
(require 'ac-nrepl)
(add-hook 'nrepl-mode-hook 'auto-complete-mode)
(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'nrepl-mode))
