;; Clojure


;; Enable paredit in clojure
(defun clojure-paredit-hook () (require 'paredit) (paredit-mode 1))
(add-hook 'clojure-mode-hook 'clojure-paredit-hook)


;; auto-complete and hippie expand
;; http://stackoverflow.com/questions/4289480/how-to-do-automatic-expansion-or-autocomplete


;; https://github.com/purcell/ac-slime
;; needs auto-complete.el

(add-to-list 'load-path (expand-path "plugins/ac-slime"))
(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)

;; https://github.com/purcell/emacs.d/blob/master/site-lisp/hippie-expand-slime/hippie-expand-slime.el

(add-to-list 'load-path (expand-path "plugins/hippie-expand-slime"))
(require 'hippie-expand-slime)
(add-hook 'slime-mode-hook 'set-up-slime-hippie-expand)
(add-hook 'slime-repl-mode-hook 'set-up-slime-hippie-expand)


;; http://objectmix.com/lisp/171856-how-enable-paredit-slime-repl.html#post608409
;; http://w01fe.com/blog/2011/11/fixing-paredit-in-the-clojure-repl/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%3A+clojure+%28Planet+Clojure%29&utm_content=Google+Reader
;; paredit mode in slime-repl


(defun fix-paredit-repl ()
  (interactive)
  (local-set-key "{" 'paredit-open-curly)
  (local-set-key "}" 'paredit-close-curly)
  (modify-syntax-entry ?\{ "(}") 
  (modify-syntax-entry ?\} "){")
  (modify-syntax-entry ?\[ "(]")
  (modify-syntax-entry ?\] ")["))


(add-hook 'slime-repl-mode-hook (lambda ()
				  (paredit-mode +1)
				  (fix-paredit-repl)))


;; Prevent slime from choking on unicode
;; https://github.com/technomancy/swank-clojure/issues/57
(setq slime-net-coding-system 'utf-8-unix)


;; Translate filenames accessed over tramp so slime works on remote machines
;; https://groups.google.com/forum/#!msg/swank-clojure/av0vE-z54ZQ/O80OA-Vt8TsJ
(defun slime-tramp-local-filename (f)
  (interactive)
  (if (file-remote-p f)
      (tramp-file-name-localname
       (tramp-dissect-file-name f))
    f))

(defun slime-tramp-remote-filename (f)
  (interactive)
  (if (file-remote-p default-directory)
      (tramp-make-tramp-file-name
       (tramp-file-name-method
    (tramp-dissect-file-name default-directory))
       (tramp-file-name-user
    (tramp-dissect-file-name default-directory))
       (tramp-file-name-host
    (tramp-dissect-file-name default-directory))
       f)
    f))

(defun slime-remote-file-name-hook ()
  (interactive)
    (setq slime-from-lisp-filename-function
      'slime-tramp-remote-filename)
    (setq slime-to-lisp-filename-function
      'slime-tramp-local-filename))

(add-hook 'slime-connected-hook 'slime-remote-file-name-hook)
