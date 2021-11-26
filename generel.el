;; Littering

(use-package no-littering
  :demand
  :config
  (with-eval-after-load 'recentf
    (add-to-list 'recentf-exclude no-littering-var-directory)
    (add-to-list 'recentf-exclude no-littering-etc-directory)))

(global-display-line-numbers-mode)
(setq display-time-default-load-average nil)
;; (display-battery-mode 1)

;; y & n for yes or no

(fset 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
