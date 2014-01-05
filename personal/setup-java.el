(prelude-require-packages '(emacs-eclim javadoc-lookup))

(require 'eclimd)

(defun java-mode-on-init ()
  (company-mode)
  (eclim-mode)
  (local-set-key (kbd "C-c C-h") 'javadoc-lookup))

(add-hook 'java-mode-hook 'java-mode-on-init)
