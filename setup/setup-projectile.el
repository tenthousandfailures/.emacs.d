
(require 'projectile)
(projectile-global-mode)
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'ido)
;; ;; Press Command-p for fuzzy find in project
(global-set-key (kbd "s-p") 'projectile-find-file)
;; ;; Press Command-b for fuzzy switch buffer
;; (global-set-key (kbd "s-b") 'projectile-switch-to-buffer)

(setq projectile-cache-file "/data/enelson/projectile.cache")
(setq projectile-file-exists-local-cache-expire nil)
(setq projectile-file-exists-remote-cache-expire nil)
(setq projectile-globally-ignored-directories (quote (".idea" ".eunit" ".git" ".hg" ".fslckout" ".bzr" "_darcs" ".tox" ".svn" "build" "work" "INCA_libs")))
(setq projectile-globally-ignored-files (quote ("TAGS" "*.log" "*.wlf" "*.ucdb")))
(setq projectile-idle-timer-seconds 30)
(setq projectile-idle-timer-functions nil)

(provide 'setup-projectile)
