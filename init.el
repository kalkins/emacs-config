;;;; This script sets up emacs for a config file
;;;; written in org mode.

;;; Code:

;; Install use-package, as it's not explictly installed
;; by the config, unless it has been installed already
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(let (config-dir config-path)
  ;; Get the path to the config file which is in
  ;; the same folder as this script
  (setq config-dir (file-name-directory
		    (or load-file-name buffer-file-name)))

  (setq config-path (concat config-dir "config.org"))

  ;; Load the config, and install all the packages
  (org-babel-load-file config-path))
