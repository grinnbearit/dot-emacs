;; Require erlang
;; https://github.com/massemanet/distel
(add-to-list 'load-path (expand-path "plugins/erlang"))

(add-to-list 'load-path (expand-path "plugins/distel/elisp"))
(require 'distel)
(distel-setup)