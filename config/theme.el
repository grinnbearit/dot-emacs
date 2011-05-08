;; Sets up how emacs looks

;; Turns off menu, tool and scroll bars
;; https://github.com/technomancy/emacs-starter-kit/blob/master/init.el
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))


;; Initializes the color-theme package
;; http://www.nongnu.org/color-theme/
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
  '(color-theme-initialize))


;; color theme tangotango
;; https://github.com/juba/color-theme-tangotango
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-tangotango")
(require 'color-theme-tangotango)
(color-theme-tangotango)