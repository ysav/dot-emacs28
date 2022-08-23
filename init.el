(setq inhibit-startup-message t)

(scroll-bar-mode -1) ;; Disable visible scrollbar
(tool-bar-mode -1)   ;; Disable the toolbar
(tooltip-mode -1)    ;; Disable tooltips
(menu-bar-mode -1)   ;; Disable menu-bar

;; setup visible bell
(setq visible-bell t) 


;; suggested linux font
;;(set-face-attribute 'fixed-pitch nil :font "Cascadia Code-12")

;; usable widows font
(setq default-frame-alist
      '(
        (width . 115) ; character
        (height . 49) ; lines
        (left . 840); pixel
        (top  .   0); pixel
        (font . "Cascadia Code-12") ; font
        ))

(load-theme 'tango-dark)

(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa": "https://melpa.org/packages/")
			 ("orgmode": "https://orgmode.org/elpa/")
			 ("elpa": "https://elpa.gnu.org/packages/")))

(package-initialize)
(package-refresh-contents)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)
