(prelude-require-package 'elscreen)

(elscreen-start)
(setq elscreen-tab-display-control nil)
(setq elscreen-tab-display-kill-screen 'none)

(global-set-key (kbd "s-1") (lambda () (interactive) (elscreen-goto 0)))
(global-set-key (kbd "s-2") (lambda () (interactive) (elscreen-goto 1)))
(global-set-key (kbd "s-3") (lambda () (interactive) (elscreen-goto 2)))
(global-set-key (kbd "s-4") (lambda () (interactive) (elscreen-goto 3)))
(global-set-key (kbd "s-5") (lambda () (interactive) (elscreen-goto 4)))
(global-set-key (kbd "s-6") (lambda () (interactive) (elscreen-goto 5)))
(global-set-key (kbd "s-7") (lambda () (interactive) (elscreen-goto 6)))
(global-set-key (kbd "s-t") 'elscreen-create)
(global-set-key (kbd "s-w") 'elscreen-kill)
(global-set-key (kbd "s-f") 'elscreen-find-file)
(global-set-key (kbd "<s-right>") 'elscreen-next)
(global-set-key (kbd "<s-left>") 'elscreen-previous)


