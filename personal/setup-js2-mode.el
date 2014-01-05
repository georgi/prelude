;; ********************************************************************************
;; JS2 Mode
;;

(prelude-require-packages '(js2-mode js2-refactor))


(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'js2-mode "js2-mode" "JS2 Mode." t)

(setq js2-rebind-eol-bol-keys nil)
(setq js2-skip-preprocessor-directives t)

(defun js2-mode-on-init ()
  (company-mode))

(add-hook 'js2-mode-hook 'js2-mode-on-init)
