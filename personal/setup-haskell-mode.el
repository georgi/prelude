;; ********************************************************************************
;; Haskell Mode
;;
(prelude-require-package 'ghc)

(defun haskell-mode-on-init ()
  (ghc-init)
  (require 'inf-haskell)
  (define-key haskell-mode-map (kbd "M-RET") nil)
  (setq ac-sources '(ac-source-ghc-mod
                     ac-source-words-in-buffer
                     ac-source-words-in-same-mode-buffers))
  (turn-on-haskell-indentation))

(add-hook 'haskell-mode-hook 'haskell-mode-on-init)

(autoload 'ghc-init "ghc" nil t)
(autoload 'haskell-mode "haskell-mode" "Haskell Mode." t)

(add-to-list 'auto-mode-alist '("\\.hs$" . haskell-mode))

(add-to-list 'exec-path "~/Library/Haskell/bin")

(setq haskell-program-name "ghci")
