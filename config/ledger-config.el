;;; http://stackoverflow.com/questions/28005149/emacs-adding-abbrevs-in-ess-mode

(define-abbrev-table 'ledger-mode-abbrev-table
  '(("INR" "₹")))

(add-hook 'ledger-mode-hook
          (lambda ()
            (setq local-abbrev-table ledger-mode-abbrev-table)
            (setq abbrev-mode t)))
