;; emmet mode
;; https://github.com/smihica/emmet-mode
(add-to-list 'load-path (expand-path "plugins/emmet-mode"))
(require 'emmet-mode)


(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;indent 2 spaces.
(define-key emmet-mode-keymap (kbd "C-j") 'newline-and-indent)
