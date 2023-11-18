(scroll-bar-mode -1)  ; Disable visible scrollbar
(tool-bar-mode -1)    ; Disable the toolbar
(tooltip-mode -1)     ; Disable tooltips
(set-fringe-mode 10)  ; Give some breathing room
(menu-bar-mode -1)    ; Disable the menu bar at the top

(set-face-attribute 'default nil :font "JetBrainsMono Nerd Font" :height 100)

;; (setq visible-bell t)
(setq inhibit-startup-message t)
;; Setting a custom theme for the lolz
(load-theme 'tango-dark)

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ;; ("melpa-stable" . "https://stable.melpa.org/packages/")
			 ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package command-log-mode)

;(use-package ivy
;  :diminish
;  :bind (("C-s" . swiper)
;	 :map ivy-minibuffer-map
;	 ("TAB" . ivy-alt-done)
;	 ("C-l" . ivy-alt-done)
;	 (""))
;  )

