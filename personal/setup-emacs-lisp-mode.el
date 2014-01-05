
;; ********************************************************************************
;; Emacs-Lisp Mode
;;
(defun emacs-lisp-mode-on-init ()
  (company-mode))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-on-init)
