;; ********************************************************************************
;; C Mode
;;
(defun c-mode-on-init ()
  (company-mode)
  (make-local-variable 'standard-indent)
  (setq standard-indent 4))

(add-hook 'c-mode-hook 'c-mode-on-init)

;; ********************************************************************************
;; C++ Mode
;;
(defun c++-mode-init()
  (company-mode)
  (make-local-variable 'standard-indent)
  (setq standard-indent 4))

(add-hook 'c++-mode-hook 'c++-mode-init)

;; ********************************************************************************
;; Objective C
;;
(defun objc-mode-init()
  (company-mode)
  (make-local-variable 'standard-indent)
  (setq standard-indent 4))

(add-hook 'objc-mode-hook 'objc-mode-init)
