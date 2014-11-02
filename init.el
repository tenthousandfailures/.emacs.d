;; https://github.com/magnars/.emacs.d
;; structure of the emacs config is based from many ideas link above

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1));

;; try to reuse frames
(setq pop-up-frames nil)
(setq ns-pop-up-frames nil)
(setq-default display-buffer-reuse-frames t)

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(add-to-list 'load-path (concat user-emacs-directory "setup/"))

;; Set up appearance early
(require 'setup-appearance)

;; Settings for currently logged in user
(setq user-settings-dir
      (concat user-emacs-directory "personal/"))
(add-to-list 'load-path user-settings-dir)

;; if a setup-proxy.el file exists use that to setup your proxy environment
(setq setup-proxy-file (concat user-emacs-directory "setup/" "setup-proxy.el"))
(when (file-exists-p setup-proxy-file)
  (require 'setup-proxy)
  )

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)

;; these two have some merit but doesn't seem to be used that much
;; (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
;; (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


;; Add in your own as you wish:
(defvar my-packages '(
                      helm
		      projectile
                      helm-projectile
                      smart-mode-line
		      htmlize
		      multiple-cursors
                      elpa-mirror
                      zenburn-theme
		      magit
                      
                      ;; crontab-mode
                      ;; ssh-config-mode

                      ;; flx-ido
                      ;;   ido-vertical-mode
                      ;;   ido-ubiquitous
                      ;;   smex

                      ;; key-chord
                      ;; ace-jump-mode
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(load-theme 'zenburn t)
(require 'sane-defaults)
(require 'setup-smart-mode-line)
(require 'setup-projectile)
(require 'setup-multiple-cursors)
(require 'setup-org)
(require 'setup-compile)
(require 'setup-helm)
(require 'setup-bug-reference)
(require 'setup-key-bindings)
(require 'setup-elpa-mirror)

;;(require 'setup-ace-jump-mode)
;;(require 'setup-key-chord)

;; Ido is replaced by helm for most of my work now
;; (require 'setup-flx-ido)

;; Emacs server
(require 'server)
(unless (server-running-p)
  (server-start))

;; Run at full power please
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; use tcl-mode for Mentor Questa .do files
(add-to-list 'auto-mode-alist '("\\.do$" . tcl-mode))

;; disable emacs backup files
(setq make-backup-files nil)

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(setq verilog-indent-level              4
      verilog-indent-level-module       4
      verilog-indent-level-declaration  4
      verilog-indent-level-behavioral   4
      verilog-indent-level-directive    4
      verilog-indent-begin-after-if     t
      verilog-indent-lists              t
      verilog-indent-declaration-macros t
      verilog-case-indent               4
      verilog-auto-newline              t
      verilog-minimum-comment-distance  12
      verilog-align-ifelse              t
      verilog-auto-endcomments          t
      verilog-cexp-indent               t
      )

;; Conclude init by setting up specifics for the current user
;; loads all local files from .emacs.d/personal/*.el
(when (file-exists-p user-settings-dir)
  (mapc 'load (directory-files user-settings-dir nil "^[^#].*el$")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-firefox))
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
