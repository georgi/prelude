
;; ********************************************************************************
;; Emacs-Lisp Mode
;;
(defun emacs-lisp-mode-on-init ()
  (setq ac-sources '(ac-source-features
                     ac-source-functions
                     ac-source-symbols
                     ac-source-variables
                     ac-source-words-in-buffer)))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-on-init)
