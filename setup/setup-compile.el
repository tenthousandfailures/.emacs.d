(require 'compile)

(setq next-error-highlight-no-select t)
(setq next-error-highlight t)

(setq compilation-skip-threshold 2)

;; Compilation motion commands skip less important messages.
;; The value can be either 2 -- skip anything less than error, 1 --
;; skip anything less than warning or 0 -- don't skip any messages.
;; Note that all messages not positively identified as warning or
;; info, are considered errors.


(setq compile-command "")
(setq compilation-context-lines 10)
(setq compilation-scroll-output t)
(setq compilation-auto-jump-to-first-error nil)

;; the below is for Mentor Questa Log File Viewing

(remove-hook 'compilation-mode-hook 'verilog-error-regexp-add-emacs)

;; REGEXP FILE [LINE COLUMN TYPE HYPERLINK HIGHLIGHT
;; TYPE is 2 or nil for a real error or 1 for warning or 0 for info.
;; FILE LINE COL TYPE

;; DONE
;; ** Error: /filepath/file.sv(63): near ".": syntax error, unexpected '.', expecting '('
(setq compilation-error-regexp-alist-alist (list '(Questa_VLOG_ERROR "^\\*\\* Error: \\(.*?\\)(\\(.*?\\)):" 1 2 nil nil)))
(setq compilation-error-regexp-alist (list 'Questa_VLOG_ERROR))

(setq compilation-error-regexp-alist-alist (list '(Questa_VLOG_ERROR_ALT "^\\*\\* Error: \\(.*?\\)(\\(.*?\\)):" 2 3 nil nil)))
(setq compilation-error-regexp-alist (list 'Questa_VLOG_ERROR_ALT))

(add-to-list 'compilation-error-regexp-alist-alist '(Questa_VLOG_FATAL "^\\*\\* FATAL: \\(.*?\\)(\\(.*?\\)):" 1 2 nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_VLOG_FATAL)

(add-to-list 'compilation-error-regexp-alist-alist '(Questa_VLOG_FATAL_ALT "^\\*\\* FATAL: \\(.*?\\) \\(.*?\\)(\\(.*?\\)):" 2 3 nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_VLOG_FATAL_ALT)

;; DONE
;; ** Warning: /filepath/file.sv(81): (vlog-2643) Unterminated string literal continues onto next line.
(add-to-list 'compilation-error-regexp-alist-alist '(Questa_VLOG_WARNING "^\\*\\* Warning: \\(.*?\\)(\\(.*?\\)):" 1 2 nil 1))
(add-to-list 'compilation-error-regexp-alist 'Questa_VLOG_WARNING)

;; ** Warning: [8] /filepath/file.sv(8805): (vlog-2623) Undefined variable: I0_out.
(add-to-list 'compilation-error-regexp-alist-alist '(Questa_VLOG_WARNING_ALT "^\\*\\* Warning: \\(.*?\\) \\(.*?\\)(\\(.*?\\)):" 2 3 nil 1))
(add-to-list 'compilation-error-regexp-alist 'Questa_VLOG_WARNING_ALT)

;; # ** Error: line here
(add-to-list 'compilation-error-regexp-alist-alist '(Questa_SIM_ERROR_NF "^\\# \\*\\* Error:" nil nil nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_SIM_ERROR_NF)

(add-to-list 'compilation-error-regexp-alist-alist '(Questa_SIM_FATAL_NF "^\\# \\*\\* Fatal:" nil nil nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_SIM_FATAL_NF)

;; DONE
;; # ** Warning: (vsim-3465) /filepath/file.sv(168): [SVTL] - Setting negative delay to zero.
(add-to-list 'compilation-error-regexp-alist-alist '(Questa_SIM_WARNING "^\\# \\*\\* Warning: (\\(.*?\\)) \\(.*?\\)(\\(.*?\\)):" 2 3 nil 1))
(add-to-list 'compilation-error-regexp-alist 'Questa_SIM_WARNING)

(add-to-list 'compilation-error-regexp-alist-alist '(Questa_SIM_ERROR "^\\# \\*\\* Error: (\\(.*?\\)) \\(.*?\\)(\\(.*?\\)):" 2 3 nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_SIM_ERROR)

(add-to-list 'compilation-error-regexp-alist-alist '(Questa_SIM_FATAL "^\\# \\*\\* Fatal: (\\(.*?\\)) \\(.*?\\)(\\(.*?\\)):" 2 3 nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_SIM_FATAL)

;; ;; # UVM_WARNING @ 1616.133ns: uvm_test_top [WAR] NOTE
;; (add-to-list 'compilation-error-regexp-alist-alist '(Questa_UVM_WARNING_NF "^\\# UVM_WARNING " nil nil nil 1))
;; (add-to-list 'compilation-error-regexp-alist 'Questa_UVM_WARNING_NF)

;; ;; # UVM_ERROR @ 1616.133ns: uvm_test_top [ER] NOTE
(add-to-list 'compilation-error-regexp-alist-alist '(Questa_UVM_ERROR_NF "^\\# UVM_ERROR " nil nil nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_UVM_ERROR_NF)

;; ;; # UVM_FATAL @ 1616.133ns: uvm_test_top [FA] NOTE
(add-to-list 'compilation-error-regexp-alist-alist '(Questa_UVM_FATAL_NF "^\\# UVM_FATAL " nil nil nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_UVM_FATAL_NF)


;; Result is FAILED
(add-to-list 'compilation-error-regexp-alist-alist '(Questa_RESULT_FAILED "^Result is FAILED" 2 nil nil nil))
(add-to-list 'compilation-error-regexp-alist 'Questa_RESULT_FAILED)

(provide 'setup-compile)
