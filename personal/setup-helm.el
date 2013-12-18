(prelude-require-packages 
 '(helm
   helm-projectile
   helm-ls-git
   helm-git-grep))

(require 'helm-config)

(helm-mode)

(global-set-key (kbd "C-c C-g") 'helm-ls-git-ls)
(global-set-key (kbd "C-c C-k") 'helm-show-kill-ring)
(global-set-key (kbd "C-c C-o") 'helm-occur)
(global-set-key (kbd "C-c C-s") 'helm-swoop)
(global-set-key (kbd "M-/") 'helm-git-grep)
(global-set-key (kbd "M-RET") 'helm-mini)
(global-set-key (kbd "M-SPC") 'helm-projectile)

(provide 'prelude-helm)
