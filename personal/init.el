(prelude-require-packages
  '(auto-complete
    auto-complete-clang
    ac-nrepl
    dart-mode
    ensime
    evil
    evil-indent-textobject
    evil-paredit
    evil-tabs
    evil-matchit
    surround
    flycheck
    rhtml-mode
    haml-mode
    yaml-mode
    js2-mode
    js2-refactor
    robe
    ghc
    yasnippet
    key-chord
    ))

(require 'helm-config)
(require 'helm-projectile)
(require 'evil)
(require 'evil-elscreen)

(require 'auto-complete-config)
(require 'auto-complete-clang)

(disable-theme 'zenburn)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(setq solarized-mode 'dark)
(load-theme 'solarized 't)

(elscreen-start)

(setq elscreen-tab-display-control nil)
(setq elscreen-tab-display-kill-screen 'none)

(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)

(setq visible-bell 1)
(setq ring-bell-function (lambda() ()))

(setq prelude-whitespace nil)
(setq prelude-guru nil)

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
(guru-mode 0)

(global-set-key (kbd "<mouse-5>") 'scroll-up-line)
(global-set-key (kbd "<mouse-4>") 'scroll-down-line)

(global-set-key (kbd "DEL") 'backward-delete-char-untabify)

(global-set-key (kbd "C-c /") 'helm-do-grep)
(global-set-key (kbd "C-c C-k") 'helm-show-kill-ring)
(global-set-key (kbd "C-c C-n") 'next-error)
(global-set-key (kbd "C-c C-o") 'helm-occur)
(global-set-key (kbd "C-c C-f") 'helm-projectile)
(global-set-key (kbd "C-c C-r") 'recompile)

(global-set-key (kbd "M-RET") 'helm-mini)

(put 'dired-find-alternate-file 'disabled nil)

(define-key evil-insert-state-map "k" #'cofi/maybe-exit)

(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "k")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))


;; change mode-line color by evil state
(lexical-let ((default-color (cons (face-background 'mode-line)
                                   (face-foreground 'mode-line))))
  (add-hook 'post-command-hook
            (lambda ()
              (let ((color (cond ((minibufferp) default-color)
                                 ((evil-insert-state-p) '("#e80000" . "#000000"))
                                 ((evil-emacs-state-p)  '("#444488" . "#000000"))
                                 ((buffer-modified-p)   '("#006fa0" . "#000000"))
                                 (t default-color))))
                (set-face-background 'mode-line (car color))
                (set-face-foreground 'mode-line (cdr color))))))


