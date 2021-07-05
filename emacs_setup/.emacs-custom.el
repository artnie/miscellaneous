;; Get Source-Code Pro Font here:
;; https://gist.github.com/enzinier/8d00d3f37d2e23985dcfa65662d163fa
;; Or simply run the installer script in this directory.

;; Add following line to the main emacs config file:
;; (load-file "/path/to/.emacs-custom.el")

;; Start EMACS
;; Install solarized-theme:
;; M-x package-install solarized-theme

;; Remove Toolbar
(tool-bar-mode -1)

;; Remove menu bar
(menu-bar-mode -1)

;; Use Source Code Pro font
(add-to-list 'default-frame-alist '(font . "Source Code Pro-10"))

;; Use solarized dark theme
(require 'package)
;; Add melpa package source when using package list
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;; Load emacs packages and activate them
(package-initialize)
(load-theme 'solarized-dark t)

;; Use smooth scrolling
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

(provide 'custom-style) 
