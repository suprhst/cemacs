
;; Which key
(use-package which-key
  :straight t
  :config (which-key-mode))


;; DashBoard


(use-package dashboard
  :straight t
  :init
  (progn
    (setq dashboard-center-content t)
    (setq dashboard-startup-banner "~/Downloads/l.png")
    (setq dashboard-set-file-icons t)
    (setq dashboard-banner-logo-title " Remember VIM Is Always Better  ")
    (setq dashboard-set-heading-icon t))
  :config
  (dashboard-setup-startup-hook))


;; Avy

(use-package avy
  :straight t
  :bind ("M-s" . avy-goto-char))

;; Projectile

(use-package projectile
  :straight t
  :config
  (define-key projectile-mode-map (kbd "C-x p") 'Projectile-command-map)
  (projectile-mode +1))

;; Treemacs

(use-package treemacs
  :straight t
  :bind
  (:map global-map
	([f8] . treemacs))
  :config
  (setq treemacs-is-never-other-window t))

(use-package treemacs-projectile
  :straight t)

;; Company Mode

(use-package company
  :straight t
  :init
  (add-hook 'after-init-hook 'global-company-mode))

;; Flycheck

(use-package flycheck
  :straight t
  :init
  (global-flycheck-mode t))

;; Expand region

(use-package expand-region
  :straight t
  :bind
  ("C-=" . er/expand-region)
  ("C--" . er/contract-region))

;; Ace Window

(use-package ace-window
  :straight t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    (custom-set-faces
     '(aw-leading-char-face
       ((t (:inherit ace-jump-face-foreground :height 3.0)))))
    ))


;; Smart Parens

(use-package smartparens
  :straight t)
(smartparens-mode t)



