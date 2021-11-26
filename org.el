
;; Org Superstar

(use-package org-superstar
	     :config
	     (setq org-superstar-special-todo-items t)
	     (add-hook 'org-mode-hook (lambda ()
					(org-superstar-mode 1))))
(setq initial-major-mode 'org-mode)
(setq org-hide-emphasis-markers t)

;; Org-Roam

(use-package org-roam
	     :straight t
	     :custom
	     (org-roam-directory (file-truename "~/orgroam"))
	     :bind (("C-c n l" . org-roam-buffer-toggle)
		    ("C-c n f" . org-roam-node-find)
		    ("C-c n g" . org-roam-graph)
		    ("C-c n i" . org-roam-node-insert)
		    ("C-c n c" . org-roam-capture)
		    ;; Dailies
		    ("C-c n j" . org-roam-dailies-capture-today))
	     :config
	     (org-roam-db-autosync-mode)
	     ;; If using org-roam-protocol
	     (require 'org-roam-protocol))
(setq org-roam-v2-ack t)

;; Org-roam-ui

(use-package websocket
	     :straight t)
(use-package simple-httpd
	     :straight t)
(use-package f
	     :straight t)
(use-package org-roam-ui
	     :straight t)
(add-to-list 'load-path "~/.emacs.d/private/org-roam-ui")
(load-library "org-roam-ui")

;; Org-reveal

(use-package ox-reveal
	     :straight t)
(setq  org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js")
(use-package htmlize
	     :straight t)

;; Org-Appear

(use-package org-appear
	     :hook (org-mode . org-appear-mode))
(setq org-pretty-entities t)
(setq org-startup-with-inline-images t
      org-image-actual-width '(600))
(setq org-src-fontify-natively t)
(setq org-src-tab-acts-natively t)
(add-to-list 'org-structure-template-alist
	     '("el" . "src emacs-lisp"))



 ;; Org Capture
(custom-set-variables
 '(org-directory "~/org"))
(global-set-key (kbd "C-c c") 'org-capture)

;; Org-capture templates

(setq org-capture-templates
      '(("s" "Snippet" entry
	 (file+headline "mysnip.org" "My Snippets")
	 "* %^{note :} \n %? %i")))


