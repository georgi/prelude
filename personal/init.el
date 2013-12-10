(require 'helm-config)
(require 'evil)

(require 'auto-complete-config)
(require 'auto-complete-clang)

;; (load-theme 'solarized-dark)

(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)

(setq visible-bell 1)
(setq ring-bell-function (lambda() ()))

(setq prelude-whitespace nil)

(add-to-list 'ac-dictionary-directories (expand-file-name "~/.emacs.d/ac-dict"))
(ac-config-default)
(ac-set-trigger-key "TAB")
(setq ac-quick-help-delay 0.5)
(setq ac-auto-start nil)

(helm-mode)
(menu-bar-mode 0)
(evil-mode 1)
(global-auto-complete-mode t)
(global-flycheck-mode)

(global-set-key (kbd "<mouse-5>") 'scroll-up-line)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)

(global-set-key (kbd "DEL") 'backward-delete-char-untabify)

(global-set-key (kbd "C-c /") 'helm-do-grep)
(global-set-key (kbd "C-c d") 'dired)
(global-set-key (kbd "C-c i") 'helm-imenu)
(global-set-key (kbd "C-c k") 'helm-show-kill-ring)
;; (global-set-key (kbd "C-c n") 'next-error)
;; (global-set-key (kbd "C-c o") 'helm-occur)
;; (global-set-key (kbd "C-c r") 'recompile)

(global-set-key (kbd "M-RET") 'helm-mini)

(put 'dired-find-alternate-file 'disabled nil)
