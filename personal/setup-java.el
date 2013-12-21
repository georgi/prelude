(prelude-require-packages '(javadoc-lookup))

(defun java-mode-on-init ()
  (local-set-key (kbd "C-c C-h") 'javadoc-lookup))

(add-hook 'java-mode-hook 'java-mode-on-init)
