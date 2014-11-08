(let ((default-directory "~/.emacs.d/packages/"))
  (normal-top-level-add-subdirs-to-load-path))
;; powerline
(require 'powerline)
;; ido mode
(ido-mode 1)
;;display them one per line
(setq ido-separator "\n")
;; display any item that contains the chars you typed
(setq ido-enable-flex-matching t)
