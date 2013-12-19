(prelude-require-packages
 '(go-mode go-autocomplete))

(require 'go-mode-load)

(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'before-save-hook 'go-remove-unused-imports)

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c i") 'go-goto-imports)))
