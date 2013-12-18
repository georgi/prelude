(setq visible-bell 1)
(setq ring-bell-function (lambda() ()))

(setq prelude-whitespace nil)
(setq prelude-guru nil)

(menu-bar-mode 0)
(scroll-bar-mode 0)
(tool-bar-mode 0)
(guru-mode 0)

;; (global-set-key (kbd "<mouse-5>") 'scroll-up-line)
;; (global-set-key (kbd "<mouse-4>") 'scroll-down-line)

(global-set-key (kbd "DEL") 'backward-delete-char-untabify)
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C-c C-n") 'next-error)
(global-set-key (kbd "C-c C-r") 'recompile)


