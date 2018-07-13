(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; install packages if not already installed
(defvar my-packages '(better-defaults
                      doom-themes
		      projectile
                      js2-mode
                      rjsx-mode
		      ))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(add-to-list 'load-path "~/.emacs.d/customizations")

(load "modes.el")

(load "theme.el")

(load "typography.el")

(load "ui.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2a1b4531f353ec68f2afd51b396375ac2547c078d035f51242ba907ad8ca19da" "2af26301bded15f5f9111d3a161b6bfb3f4b93ec34ffa95e42815396da9cb560" "53d1bb57dadafbdebb5fbd1a57c2d53d2b4db617f3e0e05849e78a4f78df3a1b" "4e21fb654406f11ab2a628c47c1cbe53bab645d32f2c807ee2295436f09103c6" default)))
 '(package-selected-packages (quote (exec-path-from-shell projectile better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
