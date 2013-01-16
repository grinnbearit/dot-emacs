;; Clojure

(require 'paredit)


(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'nrepl-enable-on-existing-clojure-buffers)
