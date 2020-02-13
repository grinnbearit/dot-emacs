;; mac osx specific
;; https://stackoverflow.com/questions/13671839/cant-launch-lein-repl-in-emacs
(add-to-list 'exec-path "/Users/sgodiwala/bin")

;; https://docs.cider.mx/cider/config/syntax_highlighting.html
(setq cider-font-lock-dynamically '(macro core function var))

;; https://docs.cider.mx/cider/config/misc.html
(setq cider-overlays-use-font-lock t)

;; https://www.reddit.com/r/emacs/comments/24tzus/configure_eldoc_for_clojure/
(add-hook 'clojure-mode-hook 'cider-mode)
