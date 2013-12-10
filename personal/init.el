(require 'cl)
(require 'package)

(add-to-list 'package-archives
   '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(defvar my-packages
  '(auto-complete 
    auto-complete-clang
    ac-etags
    ac-nrepl
    ac-helm
    dart-mode
    ensime
    evil
    evil-indent-textobject
    evil-paredit
    evil-tabs
    evil-matchit
    surround
    flycheck
    )
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  (package-refresh-contents)
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)

(setq visible-bell 1)
(setq ring-bell-function (lambda() ()))

(fset 'yes-or-no-p 'y-or-n-p)
(setq case-fold-search t)
(setq enable-recursive-minibuffers nil)
(setq inhibit-startup-screen t)
(setq standard-indent 2)
(setq tags-revert-without-query t)
(setq-default tab-width 4)

(setq initial-major-mode 'text-mode)

(tool-bar-mode 0)
(column-number-mode t)
(show-paren-mode t)
(transient-mark-mode t)
(recentf-mode)
(xterm-mouse-mode t)
(unless (window-system)
  (menu-bar-mode 0))

(require 'helm-config)
(helm-mode)

(require 'evil)
(evil-mode 1)

(load "~/.emacs.d/init.el")

(global-set-key (kbd "<mouse-5>") 'scroll-up-line)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)

(global-set-key (kbd "DEL") 'backward-delete-char-untabify)

(define-key evil-motion-state-map (kbd "<up>") 'evil-previous-line)
(define-key evil-motion-state-map (kbd "<down>") 'evil-next-line)
(define-key evil-motion-state-map (kbd "<left>") 'evil-backward-char)
(define-key evil-motion-state-map (kbd "<right>") 'evil-forward-char)
(define-key evil-motion-state-map (kbd "RET") 'insert-newline)

(global-set-key (kbd "ESC <left>") 'evil-prev-buffer)
(global-set-key (kbd "ESC <right>") 'evil-next-buffer)

(global-set-key (kbd "C-c /") 'helm-do-grep)
(global-set-key (kbd "C-c d") 'dired)
;; (global-set-key (kbd "C-c i") 'helm-imenu)
;; (global-set-key (kbd "C-c k") 'helm-show-kill-ring)
;; (global-set-key (kbd "C-c n") 'next-error)
;; (global-set-key (kbd "C-c o") 'helm-occur)
;; (global-set-key (kbd "C-c r") 'recompile)

(global-set-key (kbd "M-RET") 'helm-mini)

(put 'dired-find-alternate-file 'disabled nil)
