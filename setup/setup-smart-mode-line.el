(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)

(sml/setup)
(sml/apply-theme 'dark)
(add-to-list 'sml/replacer-regexp-list '("^/data/enelson/" ":DATA:") t)
(add-to-list 'sml/replacer-regexp-list '("^:DATA:trunk" ":DTRUNK:") t)
(add-to-list 'sml/replacer-regexp-list '("^:DATA:debug" ":DDEBUG:") t)

(provide 'setup-smart-mode-line)
