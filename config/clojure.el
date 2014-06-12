;; Clojure

(require 'paredit)
(add-hook 'clojure-mode-hook 'paredit-mode)

;; cider
;; https://github.com/clojure-emacs/cider#configuration
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq nrepl-hide-special-buffers t)
(setq cider-prompt-save-file-on-load nil)
(setq cider-repl-use-clojure-font-lock t)

(setq cider-repl-wrap-history t)
(setq cider-repl-history-size 1000)

(add-hook 'cider-repl-mode-hook 'paredit-mode)

;; edn
(add-to-list 'auto-mode-alist '("\\.edn\\'" . clojure-mode))
