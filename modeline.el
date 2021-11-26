
(use-package telephone-line
  :straight t)


(setq telephone-line-primary-left-separator 'telephone-line-gradient
      telephone-line-secondary-left-separator 'telephone-line-nil
      telephone-line-primary-right-separator 'telephone-line-gradient
      telephone-line-secondary-right-separator 'telephone-line-nil)
(setq telephone-line-height 24
      telephone-line-evil-use-short-tag t)
(telephone-line-mode 1)


;; octicons


;; (use-package octicons)
;; (make-face 'octicons-mode-line)
;; (set-face-attribute 'octicons-mode-line nil
;; 		    :inherit 'mode-line
;; 		    :inherit 'octicons)

;; (setq-default mode-line-format (list
;; 				" "
;; 				'(:eval (if (vc-backend buffer-file-name)
;; 					    (list
;; 					     (propertize octicon-octoface 'face 'octicons-modeline)
;; 					     (propertize " "              'face 'mode-line))))
;; 				mode-line-mule-info
;; 				'mode-line-modified
;; 				"-  "
;; 				'mode-line-buffer-identification
;; 				"  (%l, %c)  "
;; 				'mode-line-modes
;; 				" -- "
;; 				`(vc-mode vc-mode)
;; 				))

;; Doom Modeline

;; (use-package doom-modeline
;;   :ensure t
;;   :hook (after-init . doom-modeline-mode))
;; (setq doom-modeline-project-detection 'auto)
;; (setq doom-modeline-buffer-file-name-style 'auto)
;; (setq doom-modeline-icon (display-graphic-p))
;; (setq doom-modeline-major-mode-icon t)
;; (setq doom-modeline-major-mode-color-icon t)
;; (setq doom-modeline-buffer-state-icon t)
;; (setq doom-modeline-buffer-modification-icon t)
;; (setq doom-modeline-workspace-name t)
;; (setq doom-modeline-persp-name t)
;; (setq doom-modeline-persp-icon t)
