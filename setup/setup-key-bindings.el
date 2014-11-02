(global-set-key [f6] 'undo)

;; change command to meta, and ignore option
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)

;; [Home] & [End] key should take you to beginning and end of lines..
(global-set-key [home] 'beginning-of-line)
(global-set-key [select] 'end-of-line)

;; I always am hitting insert file but never want that
(global-set-key (kbd "C-x i") nil)

(define-key global-map [kp-home] 'beginning-of-buffer)
(define-key global-map [kp-end] 'end-of-buffer)
(define-key global-map [kp-prior] 'scroll-down-command)
(define-key global-map [kp-next] 'scroll-up-command)

(provide 'setup-key-bindings)
