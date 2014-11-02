
(setq org-agenda-files (file-expand-wildcards "~/org/*.org"))
(setq org-src-fontify-natively t)

(setq org-publish-project-alist
      '(("org"
         :base-directory "~/org/"
         :publishing-directory "~/org/HTML"
         :section-numbers t
         :with-toc t
         ;; :html-head
         ;; 
         ;; "<link rel=\"stylesheet\"
         ;;                href=\"../other/mystyle.css\"
         ;;                type=\"text/css\"/>"
         )))

                                        ; Must have org-mode loaded before we can configure org-babel
(require 'org-install)

                                        ; Some initial langauges we want org-babel to support
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (sh . t)
   (python . t)
   (R . t)
   (ruby . t)
   (ditaa . t)
   (dot . t)
   (octave . t)
   (sqlite . t)
   (perl . t)))

(provide 'setup-org)
