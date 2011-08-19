;; http://cx4a.org/software/auto-complete/manual.html#Manual_Installation

(add-to-list 'load-path (expand-path "plugins/auto-complete/"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (expand-path "plugins/auto-complete/dict"))
(ac-config-default)
