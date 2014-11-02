
;; http://www.emacswiki.org/emacs/KeyChord
(require 'key-chord)
(key-chord-mode 1)
;;(key-chord-define-global ";u" 'undo-tree-visualize)
(key-chord-define-global ";j" 'ace-jump-mode)
;;(key-chord-define-global ";s" 'monky-status)
(key-chord-define-global ";c" 'comment-dwim)

(provide 'setup-key-chord)
