;; Interactively Do Things

;; (require 'ido)
;; (ido-mode t)
;; (setq ido-enable-prefix nil
;;       ido-enable-flex-matching t
;;       ido-case-fold nil
;;       ido-auto-merge-work-directories-length -1
;;       ido-create-new-buffer 'always
;;       ido-use-filename-at-point nil
;;       ido-max-prospects 10)

;; ;; Try out flx-ido for better flex matching between words
;; (require 'flx-ido)
;; ;; (flx-ido-mode 1)
;; ;; disable ido faces to see flx highlights.
;; (setq ido-use-faces nil)

;; (require 'flx-ido)
;; ;; (ido-everywhere t)
;; ;; (flx-ido-mode t)

;; ; flx-ido looks better with ido-vertical-mode
;; (require 'ido-vertical-mode)
;; (ido-vertical-mode)

;; (defun sd/ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;;   (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;;   (define-key ido-completion-map (kbd "<down>") 'ido-next-match)
;;   (define-key ido-completion-map (kbd "C-p") 'ido-prev-match)
;;   (define-key ido-completion-map (kbd "<up>") 'ido-prev-match))

;; ;; Use ido everywhere
;; (require 'ido-ubiquitous)
;; ;; (ido-ubiquitous-mode 1)

;; (require 'smex)
;; (smex-initialize)
;; (global-set-key (kbd "M-x") 'smex)
;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; ;; This is your old M-x.
;; ;; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(provide 'setup-flx-ido)
