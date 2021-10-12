;; Ledger Mode
;; https://github.com/ledger/ledger-mode
(straight-use-package 'ledger-mode)
(require 'ledger-mode)

;;; http://stackoverflow.com/questions/28005149/emacs-adding-abbrevs-in-ess-mode
(define-abbrev-table 'ledger-mode-abbrev-table
  '(("INR" "₹")
    ("EUR" "€")
    ("GBP" "£")))

(add-hook 'ledger-mode-hook
          (lambda ()
            (setq local-abbrev-table ledger-mode-abbrev-table)
            (setq abbrev-mode t)))
