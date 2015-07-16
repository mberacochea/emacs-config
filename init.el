;; load packages
(let ((default-directory "~/.emacs.d/packages/"))
  (normal-top-level-add-subdirs-to-load-path))

;; elpa
(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")

;; theme solarized
(load-theme 'solarized t)
(set-frame-parameter nil 'background-mode 'dark)

;; editorconf
;(load "editorconfig")

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

;; web struff ;;

;; webmode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
;; webmode identation
(setq web-mode-markup-indent-offset 2)
(setq web-mode-css-indent-offset 2)
(setq web-mode-code-indent-offset 2)

;; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; store back up files on the temp directory
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; sass
(autoload 'scss-mode "sass-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-compile-at-save nil)

;; js-doc
(require 'js-doc)

;; neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

; autocomplete
(require 'auto-complete-config)
(ac-config-default)

;; custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized)))
 '(custom-safe-themes (quote ("31a01668c84d03862a970c471edbd377b2430868eccf5e8a9aec6831f1a0908d" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" default)))
 '(inhibit-startup-screen t)
 '(package-archives (quote (("marmalade" . "https://marmalade-repo.org/packages/") ("gnu" . "http://elpa.gnu.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
