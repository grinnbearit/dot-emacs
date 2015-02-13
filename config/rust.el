;;; http://www.emacswiki.org/emacs/ModeTutorial

(defvar rust-mode-hook nil)


(defvar rust-mode-map
  (let ((map (make-keymap)))
    (define-key map "\t" 'self-insert-command)
    map)
  "Keymap for rust major mode")


;;;###autoload
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))


(defun rust-mode ()
  "Major mode for editing rust files"
  (interactive)
  (kill-all-local-variables)
  (use-local-map rust-mode-map))
