;; load packages
(let ((default-directory "~/.emacs.d/packages/"))
  (normal-top-level-add-subdirs-to-load-path))

;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")

;; theme solarized
(load-theme 'solarized t)

;; editorconf
(load "editorconfig")

;; custom variables
(custom-set-variables
 '(inhibit-startup-screen t)
 '(package-archives (quote (("marmalade" . "https://marmalade-repo.org/packages/") ("gnu" . "http://elpa.gnu.org/packages/")))))
(custom-set-faces)

;; truncate
(toggle-truncate-lines)

;; ido mode
(ido-mode 1)
;; display them one per line
(setq ido-separator "\n")
;; display any item that contains the chars you typed
(setq ido-enable-flex-matching t)

;; org mod
(setq org-startup-indented t)
(setq org-hide-leading-stars t)

;; webmode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
;; webmode identation
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; store back up files on the temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; sass
(autoload 'scss-mode "sass-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-compile-at-save nil)
