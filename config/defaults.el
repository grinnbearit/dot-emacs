;; Cmd -> Meta
;; https://stackoverflow.com/questions/7743402/how-can-i-change-meta-key-from-alt-to-cmd-on-mac-in-emacs-24
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

;; Tangotango
;; https://github.com/juba/color-theme-tangotango
(straight-use-package 'tangotango-theme)
(load-theme 'tangotango t)

;; Helm
;; https://emacs-helm.github.io/helm/
(straight-use-package 'helm)
(require 'helm)
(global-set-key (kbd "M-x") 'helm-M-x)
(helm-mode 1)
(setq completion-styles '(flex))
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)

;; Prevent file backups from being taken, use version control instead
;; http://www.rpi.edu/dept/acs/rpinfo/common/Computing/Consulting/Software/Emacs/Hints/backup.html
(setq make-backup-files nil)

;; Prevent the startup message from showing up
;; http://stackoverflow.com/questions/3869159/how-do-i-kill-the-gnu-emacs-buffer-when-emacs-starts
(setq inhibit-startup-message t)

;; Indent whole buffer
;; http://emacsblog.org/2007/01/17/indent-whole-buffer/
(defun indent-whole-buffer ()
  "indent whole buffer"
  (interactive)
  (delete-trailing-whitespace)
  (indent-region (point-min) (point-max) nil)
  (untabify (point-min) (point-max)))

(global-set-key (kbd "C-c n") 'indent-whole-buffer)

;; Vedang
(global-set-key (kbd "<f5>") 'revert-buffer) ; Set revert-buffer to F5
(defalias 'yes-or-no-p 'y-or-n-p) ; Set yes-or-no-p to y-or-n-p
(setq require-final-newline t) ; Always add a newline at the end of a file
(add-hook 'before-save-hook 'delete-trailing-whitespace) ; Delete trailing whitespace before saving
(setq-default indent-tabs-mode nil) ; Replaces tabs with spaces

;; tab width
(custom-set-variables
 '(tab-width 4)
 '(indent-tabs-mode nil))

;; next, previous buffer
;; http://www.rabbitonweb.com/2016/04/11/my-emacs-for-scala-development-part-2/
(global-set-key (kbd "M-]") 'next-buffer)
(global-set-key (kbd "M-[") 'previous-buffer)

;; https://github.com/purcell/exec-path-from-shell
(straight-use-package 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; http://kb.mit.edu/confluence/display/istcontrib/Disabling+the+Emacs+menubar%2C+toolbar%2C+or+scrollbar
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; https://github.com/abo-abo/lispy
(straight-use-package 'lispy)
(add-hook 'emacs-lisp-mode-hook #'lispy-mode)

;; https://www.emacswiki.org/emacs/ShowParenMode
(show-paren-mode 1)
