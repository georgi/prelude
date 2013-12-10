;; ********************************************************************************
;; Markdown Mode
;;
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))


;; ********************************************************************************
;; Dart Mode
;;
(autoload 'dart-mode "dart-mode" "Dart Mode." t)
(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode))

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


;; ********************************************************************************
;; Scala Mode
;;
(require 'ensime)
(setq ensime-ac-enable-argument-placeholders nil)
(setq ensime-ac-override-settings nil)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook 'scala-mode-on-init)


;; ********************************************************************************
;; Clojure Mode

(add-hook 'nrepl-mode-hook 'ac-nrepl-setup)
(add-hook 'nrepl-interaction-mode-hook 'ac-nrepl-setup)
(eval-after-load "auto-complete"
                 '(add-to-list 'ac-modes 'nrepl-mode))

;; ********************************************************************************
;; Ruby Mode
;;

(defun ruby-mode-on-init ()
  (modify-syntax-entry ?_ "w" ruby-mode-syntax-table)

  (setq ruby-deep-indent-paren nil)
  (setq ruby-compilation-error-regexp "^\\([^: ]+\.rb\\):\\([0-9]+\\):")
  (setq ac-sources '(ac-source-robe
                     ac-source-words-in-buffer
                     ac-source-words-in-same-mode-buffers)))

(add-hook 'ruby-mode-hook 'ruby-mode-on-init)
(add-hook 'ruby-mode-hook 'robe-mode)

;; ********************************************************************************
;; RHTML Mode
;;
(autoload 'rhtml-mode "rhtml-mode" "RHTML Mode" t)
(add-to-list 'auto-mode-alist '("\\.rhtml$" . rhtml-mode))
(add-to-list 'auto-mode-alist '("\\.html.erb$" . rhtml-mode))

(defun rhtml-mode-on-init ()
  (abbrev-mode nil))

(add-hook 'rhtml-mode-hook 'rhtml-mode-on-init)


;; ********************************************************************************
;; HAML Mode
;;
(autoload 'haml-mode "haml-mode" "HAML Mode" t)
(add-to-list 'auto-mode-alist '("\\.haml$" . haml-mode))

(defun haml-mode-init ()
  (init-mode))

(add-hook 'haml-mode-hook 'haml-mode-on-init)

;; ********************************************************************************
;; YAML Mode
;;
(autoload 'yaml-mode "yaml-mode" "YAML Mode." t)

(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))


;; ********************************************************************************
;; JS2 Mode
;;
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'js2-mode "js2-mode" "JS2 Mode." t)

(setq js2-rebind-eol-bol-keys nil)

(defun js2-mode-on-init ()
  (setq ac-sources '(ac-source-semantic
                     ac-source-words-in-buffer
                     ac-source-words-in-same-mode-buffers)))

(add-hook 'js2-mode-hook 'js2-mode-on-init)


;; ********************************************************************************
;; Haskell Mode
;;
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

(setq haskell-program-name "ghci")


;; ********************************************************************************
;; Emacs-Lisp Mode
;;
(defun emacs-lisp-mode-on-init ()
  (setq ac-sources '(ac-source-features
                     ac-source-functions
                     ac-source-symbols
                     ac-source-variables
                     ac-source-words-in-buffer)))

(add-hook 'emacs-lisp-mode-hook 'emacs-lisp-mode-on-init)


;; ********************************************************************************
;; C Mode
;;
(defun c-mode-on-init ()
  (make-local-variable 'standard-indent)
  (setq standard-indent 4)
  (setq ac-sources '(ac-source-clang)))

(add-hook 'c-mode-hook 'c-mode-on-init)

;; ********************************************************************************
;; C++ Mode
;;
(defun c++-mode-init()
  (make-local-variable 'standard-indent)
  (setq standard-indent 4)
  (setq ac-sources '(ac-source-clang)))

(add-hook 'c++-mode-hook 'c++-mode-init)

;; ********************************************************************************
;; Objective C
;;
(defun objc-mode-init()
  (make-local-variable 'standard-indent)
  (setq standard-indent 4)
  (setq ac-sources '(ac-source-clang)))

(add-hook 'objc-mode-hook 'objc-mode-init)


;; ********************************************************************************
;; Dired refresh hooks
;;

(defadvice switch-to-buffer-other-window (after auto-refresh-dired (buffer &optional norecord) activate)
  (if (equal major-mode 'dired-mode)
      (revert-buffer)))

(defadvice switch-to-buffer (after auto-refresh-dired (buffer &optional norecord) activate)
  (if (equal major-mode 'dired-mode)
      (revert-buffer)))

(defadvice display-buffer (after auto-refresh-dired (buffer &optional not-this-window frame)  activate)
  (if (equal major-mode 'dired-mode)
      (revert-buffer)))

(defadvice other-window (after auto-refresh-dired (arg &optional all-frame) activate)
  (if (equal major-mode 'dired-mode)
      (revert-buffer)))
