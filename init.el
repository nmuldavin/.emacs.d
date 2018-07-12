(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)

;; install packages if not already installed
(defvar my-packages '(better-defaults
		      projectile
		      ))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))
