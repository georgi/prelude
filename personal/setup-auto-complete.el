(prelude-require-packages
  '(auto-complete
    auto-complete-clang
    ac-nrepl))

(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories (expand-file-name "~/.emacs.d/ac-dict"))

(ac-config-default)
(ac-set-trigger-key "TAB")
(setq ac-quick-help-delay 0.5)
(setq ac-auto-start nil)

(global-auto-complete-mode t)
