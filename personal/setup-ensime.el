;; ********************************************************************************
;; Scala Mode
;;
(prelude-require-package 'ensime)

(setq ensime-ac-enable-argument-placeholders nil)
(setq ensime-ac-override-settings nil)

(defun scala-mode-on-init ()
  (setq ac-sources '(ac-source-ensime-completions)))

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook 'scala-mode-on-init)


(global-set-key (kbd "<M-S-return>") 'ensime-import-type-at-point)
