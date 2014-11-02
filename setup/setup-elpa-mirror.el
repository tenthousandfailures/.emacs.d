(require 'elpa-mirror)

;; default output directory
(setq elpamr-default-output-directory "elpa/dev")

;; displayed in sample code of index.html
(setq elpamr-repository-name "none-elpa-dev")

;; displayed in sample code of index.html
(setq elpamr-repository-path "http://none.com/emacs/elpa/dev")

;; when exporting installed packages, ignore packages from these repositories
;; "gnu" means packages hosted on http://elpa.gnu.org
;; "melpa" means packages hosted on http://melpa.milkbox.net
;; (setq elpamr-exclude-package-from-repositories '("myelpa" "gnu" "melpa"))

(provide 'setup-elpa-mirror)
