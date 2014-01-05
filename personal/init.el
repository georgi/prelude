(prelude-require-packages '(company company-inf-ruby))

(setq visible-bell 1)
(setq ring-bell-function (lambda() ()))

(setq prelude-whitespace nil)
(setq prelude-guru nil)
(setq prelude-flyspell nil)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(guru-mode 0)
(global-hl-line-mode -1)

(global-set-key (kbd "DEL") 'backward-delete-char-untabify)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c c") 'compile)

(global-set-key (kbd "<s-return>") 'toggle-frame-fullscreen)

(require 'ibuffer)
(define-key ibuffer-mode-map (kbd "j") 'evil-next-line)
(define-key ibuffer-mode-map (kbd "k") 'evil-previous-line)

(add-to-list 'exec-path "~/bin")

(define-key company-mode-map (kbd "TAB") 'company-complete-common)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)

(server-start)
