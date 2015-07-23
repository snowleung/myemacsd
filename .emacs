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

(require 'yaml-mode)
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

;; file name ignore case 
(setq completion-ignore-case t)

;; display time
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上
(setq display-time-24hr-format t);;时间使用24小时制
(setq display-time-day-and-date t);;时间显示包括日期和具体时间

;;设置打开文件的缺省路径
(setq default-directory "~/")

;;显示行列号
(setq column-number-mode t)
(setq line-number-mode t)

;;设置粘贴缓冲条目数量.
(setq kill-ring-max 200)


(setq scroll-margin 3 scroll-conservatively 10000)

;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(setq default-major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)


;; (hs-minor-mode t)
;; (add-hook 'c-mode-hook 'hs-minor-mode)
;; (add-hook 'c++-mode-hook 'hs-minor-mode)
;; (add-hook 'java-mode-hook 'hs-minor-mode)
;; (add-hook 'perl-mode-hook 'hs-minor-mode)
;; (add-hook 'php-mode-hook 'hs-minor-mode)
;; (add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
