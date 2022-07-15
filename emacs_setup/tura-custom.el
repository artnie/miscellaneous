;; Adds cosmetic changes to Emacs, like scrolling, Source-Code-Pro font and a solarized theme.
;; Check out http://cram-system.org/doc/emacs-config for the functional config,
;; or get it here: https://github.com/artnie/miscellaneous/blob/master/emacs_setup/cram-custom.el

;; Get Source-Code Pro Font here:
;; https://gist.github.com/enzinier/8d00d3f37d2e23985dcfa65662d163fa
;; Or simply run the installer script in this directory

;; Add following line to the main emacs config file:
;; (load-file "/path/to/emacs-custom.el")

;; Start EMACS
;; Install solarized-theme:
;; M-x package-install solarized-theme
;;
;; If the theme name doesn't show up, run
;; M-x package-refresh-content
;; and try installing the solarized-theme again. Then 
;; M-x load-theme <RET> solarized-dark
;; There are a lot of themes form solarized, try them out by autocompletion after solarized-*

;; Use Source Code Pro font
(add-to-list 'default-frame-alist '(font . "Source Code Pro-10"))

;; Use solarized dark theme
(require 'package)
;; Add melpa package source when using package list
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;; Load emacs packages and activate them
(package-initialize)
(load-theme 'solarized-gruvbox-dark t)

;; Use smooth scrolling
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

;; Remove menu-bar
(menu-bar-mode -1)

(setq visible-bell 'T) ;; replaces bell sound with flashing window

;; Register 'make' command to compile tex files
;; (eval-after-load "tex" '(add-to-list 'TeX-command-list
;;                                      '("Make" "make" TeX-run-compile nil t)))
