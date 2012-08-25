;; Clojurescript


;; Elements stolen from both
;; http://www.spyfoos.com/index.php/2012/03/17/cljs-template-with-clojureclojurescript-repls-from-emacs/
;; and
;; http://marmalade-repo.org/packages/clojurescript-mode

(require 'clojure-mode)


(define-derived-mode clojurescript-mode clojure-mode "ClojureScript"
  "Major Mode for Clojurescript")


(add-to-list 'auto-mode-alist '("\\.cljs$" . clojurescript-mode))


(add-hook 'clojurescript-mode-hook
          (lambda ()
            (set (make-local-variable 'inferior-lisp-program)
                 (run-lisp "lein trampoline cljsbuild repl-listen"))
            (paredit-mode +1)
            (slime-mode -1)))



(provide 'clojurescript-mode)
