;;; Package -- Summary
;;; Commentary:
;; Straight Package Manager Setup
;;; Code:
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(setq package-enable-at-startup nil)

;; straight use-package

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)


;; Garbage Collection

(setq gc-cons-threshold most-positive-fixnum)

;; Lower threshold back to 8 MiB (default is 800kB)
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (expt 2 23))))


(load "~/.emacs.d/generel.el")
(load "~/.emacs.d/ui.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/org.el")
(load "~/.emacs.d/modeline.el")
(load "~/.emacs.d/completion.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d2d2d" "#d25252" "#a5c261" "#ffc66d" "#6c99bb" "#d197d9" "#6c99bb" "#cccccc"])
 '(custom-enabled-themes '(laguna))
 '(custom-safe-themes
   '("5bd0e6c06fe87f656b31eb687bbcd5409f5a18529f939f4f424990b84d302a24" "96be1c5bb74fc2ffdfed87e46c87f1492969bf2af1fc96232e35c06b517aecc1" "7d9edb10f60c3292e2bbb18c274ae1fceb713f64fc9ab9c775ca5d4760c601b4" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "722e1cd0dad601ec6567c32520126e42a8031cd72e05d2221ff511b58545b108" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "a85e40c7d2df4a5e993742929dfd903899b66a667547f740872797198778d7b5" "53d05b14dd036942fc8e14ef1375b303e4586a51a28d76c26c608ad8188235bf" "b38178d720f5349ec758490781471daa1048619e9ff04a9850234cc3dfcb6ad6" "5b61f8b18975a8c280d495cc2dcd39784cbecf6f0736c623b8cd55beb2fb4629" "cfb7f51dcfd7a42080fce44babd015f6148524427dea0d27935876880105a391" "1bb8f76bcd04a2b25a663a3da69235fbdbe9db1d5fe7efc6e8fcfc5e1030c9c3" "39b4cfc179c8e97489f028bfce47a1fd81afdb4fc97bde9dbe5e1309253abfe5" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "b67b2279fa90e4098aa126d8356931c7a76921001ddff0a8d4a0541080dee5f6" "3e34e9bf818cf6301fcabae2005bba8e61b1caba97d95509c8da78cff5f2ec8e" "6ae2604614bee865c1e6bc98fdf39356a5a9ada610c24fe3e4491aecad681815" "c7a3537791082bfbfb44091bef32d20a18e992d5da0198bf8d8363221cca5b01" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "dd4628d6c2d1f84ad7908c859797b24cc6239dfe7d71b3363ccdd2b88963f336" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "a61109d38200252de49997a49d84045c726fa8d0f4dd637fce0b8affaa5c8620" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "c614d2423075491e6b7f38a4b7ea1c68f31764b9b815e35c9741e9490119efc0" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "ea6fd1ecc660fb434e19ed6b6d193bd25670bfcb6a955dfa21662da90184ba0c" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "c23ed505c01b47f1bf8acfb11f7856ccc95630df42904b5b1e77eea3db2640cf" "e9d47d6d41e42a8313c81995a60b2af6588e9f01a1cf19ca42669a7ffd5c2fde" "6198e96f1fd7de3889a1b6ab8be1fc9b7c734cc9db0b0f16b635a2974601f977" "6313eeb08a54045a6d3945c28ab5a97916334e189cebd9c67c8b72beed0de265" default))
 '(org-directory "~/org"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(all-the-icons-dired-dir-face ((t (:foreground nil))))
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0)))))
