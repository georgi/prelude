;; ********************************************************************************
;; RHTML Mode
;;
(prelude-require-package 'rhtml-mode)

(autoload 'rhtml-mode "rhtml-mode" "RHTML Mode" t)
(add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.html.erb$" . rhtml-mode))

(defun rhtml-mode-on-init ()
  (abbrev-mode nil))

(add-hook 'rhtml-mode-hook 'rhtml-mode-on-init)
