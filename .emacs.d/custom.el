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
 '(custom-enabled-themes '(doom-gruvbox))
 '(custom-safe-themes
   '("e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0"
	 "72ed8b6bffe0bfa8d097810649fd57d2b598deef47c992920aef8b5d9599eefe"
	 "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
	 "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69"
	 "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
	 "83550d0386203f010fa42ad1af064a766cfec06fc2f42eb4f2d89ab646f3ac01" default))
 '(display-line-numbers-type 'relative)
 '(fill-column 80)
 '(indent-tabs-mode t)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-selected-packages
   '(all-the-icons all-the-icons-dired all-the-icons-nerd-fonts cargo cargo-mode
				   cmake-mode company consult corfu dap-mode diredfl
				   doom-modeline doom-themes evil flycheck gradle-mode js2-mode
				   json-mode kotlin-mode ligature lsp-java lsp-mode lsp-pyright
				   lsp-ui magit marginalia meson-mode move-text multiple-cursors
				   nasm-mode orderless org-superstar posframe rainbow-delimiters
				   rainbow-mode rust-mode rust-playground smex typescript-mode
				   ultra-scroll vertico vterm web-mode yasnippet))
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
