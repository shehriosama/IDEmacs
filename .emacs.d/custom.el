;; -*- lexical-binding: t; -*-
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(c-basic-offset 4)
 '(c-ts-mode-indent-offset 4)
 '(column-number-mode t)
 '(custom-enabled-themes '(doom-material-dark))
 '(custom-safe-themes
   '("fffef514346b2a43900e1c7ea2bc7d84cbdd4aa66c1b51946aade4b8d343b55a" default))
 '(display-line-numbers-type 'relative)
 '(fill-column 80)
 '(indent-tabs-mode t)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-selected-packages
   '(all-the-icons all-the-icons-dired all-the-icons-ibuffer
				   all-the-icons-nerd-fonts cargo cargo-mode cmake-mode company
				   dap-mode diredfl doom-modeline doom-themes evil flycheck
				   gradle-mode js2-mode json-mode kotlin-mode ligature lsp-dart
				   lsp-java lsp-mode lsp-pyright lsp-ui magit marginalia
				   move-text multiple-cursors nasm-mode org-super-agenda
				   org-superstar posframe pyvenv rainbow-delimiters rainbow-mode
				   rust-mode rust-playground smex typescript-mode ultra-scroll
				   vertico vterm web-mode yasnippet))
 '(size-indication-mode t)
 '(tab-bar-auto-width nil)
 '(tab-width 4)
 '(warning-minimum-level :error))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
