;; Clojure


;; Enable paredit in clojure
(defun clojure-paredit-hook () (require 'paredit) (paredit-mode 1))
(add-hook 'clojure-mode-hook 'clojure-paredit-hook)