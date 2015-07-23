(global-linum-mode 1)
;; yasnippet
;; (add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;; (require 'yasnippet)
;; (yas-global-mode 1)

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")
(ac-config-default)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

?a(require 'yaml-mode)
(require 'py-autopep8)
(setq py-autopep8-options '("--max-line-length=160"))

(ido-mode 1)
(setq ido-separator "\n")
(setq ido-enable-flex-matching t)
;; (setq python-skeleton-autoinsert t)
;; stop asking whether to save newly added abbrev when quitting emacs
;; (setq save-abbrevs nil)

(add-to-list 'default-frame-alist '(foreground-color . "white"))
(add-to-list 'default-frame-alist '(background-color . "black"))
(add-to-list 'default-frame-alist '(cursor-color . "coral"))

(setq tags-table-list
      '("/mnt/workspace/gizwits_site/"))

;; Default windows size 
(add-to-list 'default-frame-alist '(height . 100))
(add-to-list 'default-frame-alist '(width . 160))

;; yes or no becomes y or n
(defalias 'yes-or-no-p 'y-or-n-p)

;; ace-window
(global-set-key (kbd "M-p") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
