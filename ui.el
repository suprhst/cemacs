;; Icons

(use-package all-the-icons
	     :straight t)
(use-package treemacs-icons-dired
	     :hook (dired-mode . treemacs-icons-dired-enable-once)
	     :straight t)
(use-package treemacs-all-the-icons
	     :straight t)
(use-package mode-icons
	     :demand t
	     :config
	     (mode-icons-mode))

(use-package all-the-icons-dired
	     :straight t
	     :custom-face (all-the-icons-dired-dir-face ((t (:foreground nil))))
	     :hook (dired-mode . all-the-icons-dired-mode))

(use-package all-the-icons-ivy
  :ensure t
  :demand t
  :config
  (setq all-the-icons-ivy-file-commands
	   '(counsel-find-file counsel-file-jump counsel-recentf counsel-projectile-find-file counsel-projectile-find-dir))
  (all-the-icons-ivy-setup))
(use-package ivy-rich
  :ensure t)
(ivy-rich-mode)
(use-package all-the-icons-ivy-rich
  :ensure t)
(all-the-icons-ivy-rich-mode)
(use-package ivy-prescient)
(ivy-prescient-mode)

;; Theme

(use-package exotica-theme
	     :straight t)

(use-package underwater-theme
	     :straight t)

(use-package cyberpunk-theme
	     :straight t)

(use-package laguna-theme
	     :straight t)


(use-package klere-theme
  :straight t)

;; Hide ModeLine

(use-package hide-mode-line
	     :commands (hide-mode-line-mode))

;; Keycast

(use-package keycast
	     :config 
	     (define-minor-mode keycast-mode
	       "Show current command and its key binding in the mode line."
	       :global t
	       (if keycast-mode
		   (add-hook 'pre-command-hook 'keycast--update t)
		 (remove-hook 'pre-command-hook 'keycast--update)))
	     (add-to-list 'global-mode-string '("" mode-line-keycast " "))
	     (keycast-mode))

;; Transparency

(defun toggle-transparency ()
  (interactive)
  (let ((alpha (frame-parameter nil 'alpha)))
    (set-frame-parameter
     nil 'alpha
     (if (eql (cond ((numberp alpha) alpha)
		    ((numberp (cdr alpha)) (cdr alpha))
		    ;; Also handle undocumented (<active> <inactive>) form.
		    ((numberp (cadr alpha)) (cadr alpha)))
	      100)
	 '(85 . 50) '(100 . 100)))))
(global-set-key (kbd "C-c t") 'toggle-transparency)
