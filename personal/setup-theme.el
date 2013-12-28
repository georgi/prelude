(prelude-require-package 'solarized-theme)

(disable-theme 'zenburn)

(load-theme 'solarized-dark)

(custom-theme-set-faces
 'solarized-dark
 '(elscreen-tab-background-face ((t (:foreground "#002b36")))))

(custom-theme-set-faces
 'solarized-dark
 '(elscreen-tab-current-screen-face ((t (:foreground "#002b36" :background "#eee8d5")))))

(custom-theme-set-faces
 'solarized-dark
 '(elscreen-tab-other-screen-face ((t (:foreground "#032b35" :background "#9596e75")))))

(custom-theme-set-faces
 'solarized-dark
 '(elscreen-tab-control-face ((t (:background "#032b35" :foreground "black")))))

(custom-theme-set-faces
 'solarized-dark
 '(helm-source-header ((t (:background "#032b35" :foreground "#93A1A0")))))

(custom-theme-set-faces
 'solarized-dark
 '(helm-selection ((t (:background "#032b35" :foreground "#eee8d5")))))

(custom-theme-set-faces
 'solarized-dark
 '(helm-match ((t (:background "#032b35" :foreground "#ffffff")))))

(custom-theme-set-faces
 'solarized-dark
 '(helm-buffer-size ((t (:foreground "#032b35" :underline nil)))))

(custom-theme-set-faces
 'solarized-dark
 '(helm-ff-directory ((t (:foreground "#93A1A0" :underline nil)))))

(custom-theme-set-faces
 'solarized-dark
 '(flycheck-warning ((t (:underline (:color "#93A1A0" :style wave))))))

(custom-theme-set-faces
 'solarized-dark
 '(hl-line ((t (:background "black")))))

(set-face-background 'shm-current-face "#001111")
(set-face-background 'shm-quarantine-face "#110000")
