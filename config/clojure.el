;; Clojure


;; Enable paredit in clojure
(defun clojure-paredit-hook () (require 'paredit) (paredit-mode 1))
(add-hook 'clojure-mode-hook 'clojure-paredit-hook)


;; auto-complete and hippie expand
;; http://stackoverflow.com/questions/4289480/how-to-do-automatic-expansion-or-autocomplete


;; https://github.com/purcell/ac-slime
;; needs auto-complete.el

(add-to-list 'load-path (expand-path "plugins/ac-slime"))
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)

;; https://github.com/purcell/emacs.d/blob/master/site-lisp/hippie-expand-slime/hippie-expand-slime.el

(add-to-list 'load-path (expand-path "plugins/hippie-expand-slime"))
(require 'hippie-expand-slime)
(add-hook 'slime-mode-hook 'set-up-slime-hippie-expand)
(add-hook 'slime-repl-mode-hook 'set-up-slime-hippie-expand)