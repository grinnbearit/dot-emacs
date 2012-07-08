;; Clojurescript


;; Elements stolen from both
;; http://www.spyfoos.com/index.php/2012/03/17/cljs-template-with-clojureclojurescript-repls-from-emacs/
;; and
;; http://marmalade-repo.org/packages/clojurescript-mode

(require 'clojure-mode)

(define-derived-mode clojurescript-mode clojure-mode "ClojureScript"
  (set (make-local-variable 'inferior-lisp-program)
       (run-lisp "lein trampoline cljsbuild repl-listen"))
  (when (functionp 'slime-mode)
    (slime-mode -1)))

(add-to-list 'auto-mode-alist '("\\.cljs$" . clojurescript-mode))

(provide 'clojurescript-mode)
