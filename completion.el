;; Completion

(use-package counsel
  :straight t)

(use-package swiper
  :straight try
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (global-set-key "\C-s" 'swiper)
    (global-set-key (kbd "C-c C-r") 'ivy-resume)
    (global-set-key (kbd "<f6>") 'ivy-resume)
    (global-set-key (kbd "M-x") 'counsel-M-x)
    (global-set-key (kbd "C-x C-f") 'counsel-find-file)
    (global-set-key (kbd "<f1> f") 'counsel-describe-function)
    (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
    (global-set-key (kbd "<f1> l") 'counsel-load-library)
    (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
    (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
    (global-set-key (kbd "C-c g") 'counsel-git)
    (global-set-key (kbd "C-c j") 'counsel-git-grep)
    (global-set-key (kbd "C-c k") 'counsel-ag)
    (global-set-key (kbd "C-x l") 'counsel-locate)
    (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
    (define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
    ))


(use-package ivy-posframe
  :straight t)
(setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display)))
(ivy-posframe-mode 1)

;; Vertico

;; (use-package vertico
;;   :init
;;   (vertico-mode)
;;   (setq vertico-scroll-margin 0)
;;   (setq vertico-count 20)
;;   (setq vertico-resize t)
;;   (setq vertico-cycle t))
;; (use-package orderless
;;   :init
;;   (setq orderless-style-dispatchers '(+orderless-dispatch)
;;         orderless-component-separator #'orderless-escapable-split-on-space)
;;   (setq completion-styles '(orderless)
;;         completion-category-defaults nil
;;         completion-category-overrides '((file (styles partial-completion)))))
;; (use-package savehist
;;   :init
;;   (savehist-mode))
;; (use-package emacs
;;   :init
;;   (defun crm-indicator (args)
;;     (cons (concat "[CRM] " (car args)) (cdr args)))
;;   (advice-add #'completing-read-multiple :filter-args #'crm-indicator)
  
;;   (setq minibuffer-prompt-properties
;;         '(read-only t cursor-intangible t face minibuffer-prompt))
;;   (add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)
  
;;   (setq enable-recursive-minibuffers t))

;; (setq completion-styles '(substring orderless))

;; (setq completion-styles '(basic substring partial-completion flex))

;; (setq completion-in-region-function
;;       (lambda (&rest args)
;;         (apply (if vertico-mode
;;                    #'consult-completion-in-region
;;                  #'completion--in-region)
;;                args)))
;; (advice-add #'completing-read-multiple
;;             :override #'consult-completing-read-multiple)

;; (use-package vertico-posframe
;;   :straight t)
;; (vertico-posframe-mode 1)

;; (use-package marginalia
;;   :straight t)
;; (marginalia-mode 1)



;; (use-package embark
;;   :straight t
;;   :bind
;;   (("C-." . embark-act)         
;;    ("C-;" . embark-dwim)        
;;    ("C-h B" . embark-bindings)) 

;;   :init
;;   (setq prefix-help-command #'embark-prefix-help-command)

;;   :config
;;   (add-to-list 'display-buffer-alist
;;                '("\\`\\*Embark Collect \\(Live\\|Completions\\)\\*"
;;                  nil
;;                  (window-parameters (mode-line-format . none)))))
;; .
;; (use-package embark-consult
;;   :straight t
;;   :after (embark consult)
;;   :demand t 
;;   :hook
;;   (embark-collect-mode . consult-preview-at-point-mode))

;; (use-package consult
;;   :straight t
;;   :bind
;;   ("C-x b" . consult-buffer)
;;   ("C-s" . consult-line))



;; Helm

;; (use-package helm
;;   :straight t)
;; (global-set-key (kbd "M-x") #'helm-M-x)
;; (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;; (global-set-key (kbd "C-x C-f") #'helm-find-files)
;; (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
;; (setq helm-split-window-in-side-p           t 
;;       helm-move-to-line-cycle-in-source     t 
;;       helm-ff-search-library-in-sexp        t 
;;       helm-scroll-amount                    8 
;;       helm-ff-file-name-history-use-recentf t
;;       helm-echo-input-in-header-line t)

;; (defun v//helm-hide-minibuffer-maybe ()
;;   "Hide minibuffer in Helm session if we use the header line as input field."
;;   (when (with-helm-buffer helm-echo-input-in-header-line)
;;     (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
;;       (overlay-put ov 'window (selected-window))
;;       (overlay-put ov 'face
;;                    (let ((bg-color (face-background 'default nil)))
;;                      `(:background ,bg-color :foreground ,bg-color)))
;;       (setq-local cursor-type nil))))
;; (add-hook 'helm-minibuffer-set-up-hook
;;           'v//helm-hide-minibuffer-maybe)
;; (setq helm-autoresize-max-height 0)
;; (setq helm-autoresize-min-height 20)
;; (helm-autoresize-mode 1)
;; (helm-mode 1)
;; (use-package helm-swoop
;;   :straight t)
;; (global-set-key (kbd "M-i") 'helm-swoop)
;; (global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)
;; (global-set-key (kbd "C-c M-i") 'helm-multi-swoop)
;; (global-set-key (kbd "C-x M-i") 'helm-multi-swoop-all)

;; ;; When doing isearch, hand the word over to helm-swoop
;; (define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; ;; From helm-swoop to helm-multi-swoop-all
;; (define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; ;; When doing evil-search, hand the word over to helm-swoop
;; ;; (define-key evil-motion-state-map (kbd "M-i") 'helm-swoop-from-evil-search)

;; ;; Instead of helm-multi-swoop-all, you can also use helm-multi-swoop-current-mode
;; (define-key helm-swoop-map (kbd "M-m") 'helm-multi-swoop-current-mode-from-helm-swoop)

;; ;; Move up and down like isearch
;; (define-key helm-swoop-map (kbd "C-r") 'helm-previous-line)
;; (define-key helm-swoop-map (kbd "C-s") 'helm-next-line)
;; (define-key helm-multi-swoop-map (kbd "C-r") 'helm-previous-line)
;; (define-key helm-multi-swoop-map (kbd "C-s") 'helm-next-line)

;; ;; Save buffer when helm-multi-swoop-edit complete
;; (setq helm-multi-swoop-edit-save t)

;; ;; If this value is t, split window inside the current window
;; (setq helm-swoop-split-with-multiple-windows nil)

;; ;; Split direcion. 'split-window-vertically or 'split-window-horizontally
;; (setq helm-swoop-split-direction 'split-window-vertically)

;; ;; If nil, you can slightly boost invoke speed in exchange for text color
;; (setq helm-swoop-speed-or-color nil)

;; ;; ;; Go to the opposite side of line from the end or beginning of line
;; (setq helm-swoop-move-to-line-cycle t)

;; ;; Optional face for line numbers
;; ;; Face name is `helm-swoop-line-number-face`
;; (setq helm-swoop-use-line-number-face t)

;; ;; If you prefer fuzzy matching
;; (setq helm-swoop-use-fuzzy-match t)

;; ;; If you would like to use migemo, enable helm's migemo feature
;; ;; (helm-migemo-mode 1)			


;; Helm 2
;; (use-package helm
;;   ;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;;   ;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;;   ;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
;;   :demand t
;;   :bind (("M-x" . helm-M-x)
;;      ("C-c h o" . helm-occur)
;;      ("<f1> SPC" . helm-all-mark-rings) ; I modified the keybinding 
;;      ("M-y" . helm-show-kill-ring)
;;      ("C-c h x" . helm-register)    ; C-x r SPC and C-x r j
;;      ("C-c h g" . helm-google-suggest)
;;      ("C-c h M-:" . helm-eval-expression-with-eldoc)
;;      ("C-x C-f" . helm-find-files)
;;      ("C-x b" . helm-mini)      ; *<major-mode> or /<dir> or !/<dir-not-desired> or @<regexp>
;;      :map helm-map
;;      ("<tab>" . helm-execute-persistent-action) ; rebind tab to run persistent action
;;      ("C-i" . helm-execute-persistent-action) ; make TAB works in terminal
;;      ("C-z" . helm-select-action) ; list actions using C-z
;;      :map shell-mode-map
;;      ("C-c C-l" . helm-comint-input-ring) ; in shell mode
;;      :map minibuffer-local-map
;;      ("C-c C-l" . helm-minibuffer-history))
;;   :init
;;   (setq helm-command-prefix-key "C-c h")
;;   (setq recentf-save-file "~/.emacs.d/misc/recentf" ; customize yours
;;     recentf-max-saved-items 50)
;;   (require 'helm-eshell)        ; question
;;   (add-hook 'eshell-mode-hook
;;         #'(lambda ()
;;         (define-key eshell-mode-map (kbd "C-c C-l")  'helm-eshell-history))) 
;;   (defun spacemacs//helm-hide-minibuffer-maybe ()
;;   "Hide minibuffer in Helm session if we use the header line as input field."
;;   (when (with-helm-buffer helm-echo-input-in-header-line)
;;     (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
;;       (overlay-put ov 'window (selected-window))
;;       (overlay-put ov 'face
;;                    (let ((bg-color (face-background 'default nil)))
;;                      `(:background ,bg-color :foreground ,bg-color)))
;;       (setq-local cursor-type nil))))
;;   :config
;;   (when (executable-find "curl")
;;     (setq helm-google-suggest-use-curl-p t))
;;   (setq helm-M-x-fuzzy-match t)
;;   (setq helm-buffers-fuzzy-matching t
;;     helm-recentf-fuzzy-match    t)
;;   (setq helm-semantic-fuzzy-match t
;;     helm-imenu-fuzzy-match    t)
;;   (setq helm-locate-fuzzy-match t)
;;   (setq helm-apropos-fuzzy-match t)
;;   (setq helm-lisp-fuzzy-completion t)
;;   (add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)
  
;;   (setq helm-split-window-in-side-p         t ; open helm buffer inside current window, not occupy whole other window
;;       helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
;;       helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;;       helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;;       helm-ff-file-name-history-use-recentf t
;;       helm-echo-input-in-header-line t)
;;   (add-hook 'helm-minibuffer-set-up-hook
;;         'spacemacs//helm-hide-minibuffer-maybe)
;;   (setq helm-autoresize-max-height 0)
;;   (setq helm-autoresize-min-height 20)
;;   (helm-autoresize-mode 1)
;;   (helm-mode 1)
;;   )
;; (use-package helm-descbinds
;;   :straight t)

;; Default
;; (ido-mode)
;; (setq ido-enable-flex-matching t)
;; (use-package smex)
;; (global-set-key "\C-t" 'smex)
;; (global-set-key
;;  "η"
;;  (lambda()(interactive)
;;    (when (buffer-file-name)
;;      (save-buffer))
;;    (ido-switch-buffer)))

;; (global-set-key
;;  (kbd "C-η")
;;  (lambda()(interactive)
;;    (let ((ido-default-buffer-method 'other-window))
;;      (ido-switch-buffer))))

;; (add-hook 'dired-mode-hook
;;           (lambda()
;;             (define-key dired-mode-map "j" 'ido-find-file)))

;; (add-hook
;;  'ido-setup-hook
;;  (lambda()
;;    ;; 2
;;    (define-key ido-file-dir-completion-map "~"
;;      (lambda ()(interactive)
;;         (ido-set-current-directory "~/")
;;         (setq ido-exit 'refresh)
;;         (exit-minibuffer)))
;;    ;; 3
;;    (define-key ido-buffer-completion-map "η" 'ido-next-match)
;;    ;; 4
;;    (define-key ido-buffer-completion-map (kbd "C-p")
;;      'ido-fallback-command)
;;    ;; 5
;;    (define-key ido-completion-map (kbd "C-.") 'smex-find-function)
;;    (define-key ido-completion-map (kbd "C-,") 'smex-describe-function)))
