;; Clojure

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'paxedit-mode)

;; cider
;; https://github.com/clojure-emacs/cider#configuration
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(setq nrepl-log-messages t)
(setq nrepl-hide-special-buffers t)
(setq cider-repl-tab-command 'indent-for-tab-command)
(setq cider-prompt-save-file-on-load nil)
(setq cider-repl-use-clojure-font-lock t)

(add-hook 'cider-repl-mode-hook 'company-mode)
(add-hook 'cider-mode-hook 'company-mode)

(add-hook 'cider-repl-mode-hook 'paredit-mode)
(add-hook 'cider-repl-mode-hook 'paxedit-mode)

;; edn
(add-to-list 'auto-mode-alist '("\\.edn\\'" . clojure-mode))
