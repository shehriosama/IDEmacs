;; -*- lexical-binding: t; -*-

;; ------------------------------
;; FlyCheck: Checker
;; ------------------------------
(use-package flycheck
  :init (global-flycheck-mode t))

;; ------------------------------
;; Vertico: Vertical menus
;; ------------------------------
(use-package vertico
  :init
  (vertico-mode))

;; ------------------------------
;; Marginalia: Annotation options
;; ------------------------------
(use-package marginalia
  :bind (:map minibuffer-local-map
         ("M-A" . marginalia-cycle))
  :init
  (marginalia-mode))

;; ------------------------------
;; Company: Auto completion
;; ------------------------------
(use-package company
  :init (global-company-mode t))

;; ------------------------------
;; YASnippet: Snippets
;; ------------------------------
(use-package yasnippet
  :ensure t
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/snippets/"))
  (yas-global-mode))

;; ------------------------------
;; Magit: Git integration
;; ------------------------------
(use-package magit)

;; ------------------------------
;; Rainbow delimiters & mode
;; ------------------------------
(use-package rainbow-delimiters
  :ensure t
  :config
  (rainbow-delimiters-mode)
  (add-hook 'foo-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))
(use-package rainbow-mode
  :ensure t
  :hook (emacs-lisp-mode text-mode lisp-mode prog-mode)
  :init (rainbow-mode))

;; ------------------------------
;; Font ligature
;; ------------------------------
(use-package ligature
  :config
  (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       "\\\\" "://"))
  (global-ligature-mode t))

;; ------------------------------
;; Org superstar
;; ------------------------------
(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

;; ------------------------------
;; NASM
;; ------------------------------
(use-package nasm-mode
  :ensure t
  :mode ("\\.\\(asm\\|s\\)\\'" . nasm-mode)
  :hook
  (asm-mode . company-mode)
  (nasm-mode . company-mode))

;; ------------------------------
;; Tree sitter: Syntax Highlighting
;; ------------------------------
(setq major-mode-remap-alist
  '((css-mode  . css-ts-mode)
    (rust-mode . rust-ts-mode)
    (c-mode . c-ts-mode)
    (c++-mode . c++-ts-mode)
    (java-mode . java-ts-mode)
    (js-mode . js-ts-mode)
    (html-mode . html-ts-mode)
    (python-mode . python-ts-mode)))

;; ------------------------------
;; LSP mode
;; ------------------------------
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-enable-indentation nil)
  (setq lsp-enable-on-type-formatting nil)
  :hook (
         ;; (asm-mode . lsp)
         (nasm-mode . lsp)
         (c-ts-mode . lsp)
		 (c++-ts-mode . lsp)
		 (css-ts-mode . lsp)
		 (html-ts-mode . lsp)
		 (python-ts-mode . lsp)
		 (kotlin-ts-mode . lsp)
		 (js-ts-mode . lsp)
		 (rust-ts-mode . lsp))
  :commands lsp)

(use-package lsp-ui
  :ensure t
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-sideline-enable t))

(use-package lsp-java
  :config
  (add-hook 'java-mode-hook 'lsp)
  (add-hook 'java-ts-mode-hook 'lsp))

(use-package lsp-pyright
  :ensure t
  :custom (lsp-pyright-langserver-command "pyright") ;; or basedpyright
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred

;; ------------------------------
;; DAP mode
;; ------------------------------
(dap-mode 1)
(dap-ui-mode 1)
(dap-tooltip-mode 1)
(tooltip-mode 1)
(dap-ui-controls-mode 1)

(require 'dap-lldb)
(setq dap-lldb-debug-program '("/usr/bin/lldb-dap"))
;;; ide.el ends here
