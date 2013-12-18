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
