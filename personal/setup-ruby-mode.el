;; ********************************************************************************
;; Ruby Mode
;;

(prelude-require-package 'robe)

(defun ruby-mode-on-init ()
  (modify-syntax-entry ?_ "w" ruby-mode-syntax-table)

  (setq ruby-deep-indent-paren nil)
  (setq ruby-compilation-error-regexp "^\\([^: ]+\.rb\\):\\([0-9]+\\):")
  (setq ac-sources '(ac-source-robe
                     ac-source-words-in-buffer
                     ac-source-words-in-same-mode-buffers)))

(add-hook 'ruby-mode-hook 'ruby-mode-on-init)
(add-hook 'ruby-mode-hook 'robe-mode)
