;;; Clojurescript

;; http://www.spyfoos.com/index.php/2012/03/17/cljs-template-with-clojureclojurescript-repls-from-emacs/
;; https://github.com/technomancy/clojure-mode/blob/master/clojurescript-mode.el

(require 'clojure-mode)

(eval-when-compile
  (defvar paredit-mode)
  (defvar paredit-version))


(defvar clojurescript-clj-repl
  "lein trampoline cljsbuild repl-listen")


(defun clojurescript-start-cljs-repl ()
  (inferior-lisp-proc))

(define-derived-mode clojurescript-mode clojure-mode "ClojureScript"
  "Major mode for ClojureScript"

  (set (make-local-variable 'inferior-lisp-program) clojurescript-clj-repl)
  (add-hook 'inferior-lisp-mode-hook 'clojurescript-start-cljs-repl)
  (when (and (featurep 'paredit) paredit-mode (>= paredit-version 21))
    (define-key clojurescript-mode-map "{" 'paredit-open-curly)
    (define-key clojurescript-mode-map "}" 'paredit-close-curly))
  (when (functionp 'slime-mode)
    (slime-mode -1))
  (nrepl-interaction-mode -1)
  (define-key clojurescript-mode-map "\C-x\C-e" 'clojurescript-eval-last-expression)
  (define-key clojurescript-mode-map "\C-c\C-k" 'clojurescript-compile-and-load-file))

(put-clojure-indent 'this-as 'defun)

(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojurescript-mode))

(provide 'clojurescript-mode)
