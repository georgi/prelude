;; ********************************************************************************
;; Haskell Mode
;;
(prelude-require-package 'ghc)

(setq shm-path  "~/.emacs.d/structured-haskell-mode/elisp")

(if (file-exists-p shm-path)
    (progn
      (add-to-list 'load-path shm-path)
      (require 'shm)
      (add-hook 'haskell-mode-hook 'structured-haskell-mode))) 

(defun haskell-mode-on-init ()
  (ghc-init)
  (require 'inf-haskell)
  (require 'haskell-indentation)
  (define-key haskell-mode-map (kbd "M-RET") nil)
  (define-key haskell-mode-map (kbd "C-c C-h") 'console-hoogle)
  (setq ac-sources '(ac-source-ghc-mod
                     ac-source-words-in-buffer
                     ac-source-words-in-same-mode-buffers))
  (turn-on-haskell-indentation))

(defun console-hoogle ()
  (interactive)
  (let* ((query (word-at-point))
         (buffer (get-buffer-create query)))
    (save-excursion
      (switch-to-buffer buffer)
      (erase-buffer))
    (switch-to-buffer (current-buffer))
    (call-process "hoogle" nil buffer t "--info" query)
    (display-message-or-buffer buffer)))
  

(add-hook 'haskell-mode-hook 'haskell-mode-on-init)

(autoload 'ghc-init "ghc" nil t)
(autoload 'haskell-mode "haskell-mode" "Haskell Mode." t)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))
(add-to-list 'exec-path "~/Library/Haskell/bin")

(setq haskell-program-name "ghci")
