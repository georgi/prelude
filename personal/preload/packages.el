(require 'cl)
(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(defvar my-packages
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
