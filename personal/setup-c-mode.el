;; ********************************************************************************
;; C Mode
;;
(defun c-mode-on-init ()
  (make-local-variable 'standard-indent)
  (setq standard-indent 4)
  (setq ac-sources '(ac-source-clang)))

(add-hook 'c-mode-hook 'c-mode-on-init)

;; ********************************************************************************
;; C++ Mode
;;
(defun c++-mode-init()
  (make-local-variable 'standard-indent)
  (setq standard-indent 4)
  (setq ac-sources '(ac-source-clang)))

(add-hook 'c++-mode-hook 'c++-mode-init)

;; ********************************************************************************
;; Objective C
;;
(defun objc-mode-init()
  (make-local-variable 'standard-indent)
  (setq standard-indent 4)
  (setq ac-sources '(ac-source-clang)))

(add-hook 'objc-mode-hook 'objc-mode-init)

(defun csharp-mode-init()
  (setq ac-sources '(ac-source-omnisharp)))

(add-hook 'csharp-mode-hoop 'csharp-mode-init)

(add-to-list 'exec-path "/Applications/Unity/MonoDevelop.app/Contents/Frameworks/Mono.framework/Commands")
