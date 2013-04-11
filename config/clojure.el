;; Clojure

(require 'paredit)


(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'nrepl-enable-on-existing-clojure-buffers)


;; persistent nrepl history
;; https://groups.google.com/forum/#!msg/nrepl-el/Nbaeaqw_VBQ/iw9vkvJKyI0J
(setq nrepl-history-file "~/.nrepl-history.eld")
