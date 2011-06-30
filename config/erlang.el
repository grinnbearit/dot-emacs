;; Require erlang
;; https://github.com/massemanet/distel
(add-to-list 'load-path (expand-path "plugins/erlang"))

(add-to-list 'load-path (expand-path "plugins/distel/elisp"))
(require 'distel)
(distel-setup)


(add-to-list 'auto-mode-alist '("\\.erl\\'" . erlang-mode))


;; http://bc.tech.coop/blog/070528.html
(add-hook 'erlang-mode-hook
          (lambda ()
            ;; A number of the erlang-extended-mode key bindings are useful in the shell too
            (defconst distel-shell-keys
              '(("\C-\M-i"   erl-complete)
                ("\M-?"      erl-complete)
                ("\M-."      erl-find-source-under-point)
                ("\M-,"      erl-find-source-unwind)
                ("\M-*"      erl-find-source-unwind)
                )
              "Additional keys to bind when in Erlang shell.")

            (add-hook 'erlang-shell-mode-hook
                      (lambda ()
                        ;; add some Distel bindings to the Erlang shell
                        (dolist (spec distel-shell-keys)
                          (define-key erlang-shell-mode-map (car spec) (cadr spec)))))))