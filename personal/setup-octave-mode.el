;; ********************************************************************************
;; Octave Mode
;;
;;
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))

(defun octave-mode-on-init ()
  (require 'ac-octave)
  (setq ac-sources '(ac-source-octave)))

(add-hook 'octave-mode-hook 'octave-mode-on-init)
