;; Sets up how emacs looks

;; Turns off menu, tool and scroll bars
;; https://github.com/technomancy/emacs-starter-kit/blob/master/init.el
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


