;; http://ergoemacs.org/emacs/emacs_package_system.html
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

;; Packages to be installed
(setq package-list
      '(ac-cider
        async
        auto-complete
        cider
        clojure-mode
        clojurescript-mode
        dash
        emmet-mode
        epl
        git-commit
        ledger-mode
        magit
        magit-popup
        markdown-mode
        paredit
        paxedit
        pkg-info
        popup
        queue
        rust-mode
        scss-mode
        seq
        spinner
        tangotango-theme
        web-mode
        with-editor
        helm
        haskell-mode))

;; Update if not installed
(let (update-flag)
  (dolist (pkg package-list update-flag)
    (unless (package-installed-p pkg)
      (setq update-flag 1)))

  (when update-flag
    (package-refresh-contents)
    (dolist (pkg package-list)
      (unless (package-installed-p pkg)
        (package-install pkg)))))
