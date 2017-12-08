;;;; This script sets up emacs for a config file
;;;; written in org mode.
;;;;
;;;; It should only be executed once, when the config is first used.
;;;; You should restart emacs afterwards, to make sure that all
;;;; packages get loaded properly.

;;; Code:

;; Install use-package, as it's not explictly installed
;; by the config, unless it has been installed already
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(let (config-dir config-path)
  ;; Get the path to the config file which is in
  ;; the same folder as this script
  (setq config-dir (file-name-directory
		    (or load-file-name buffer-file-name)))

  ;; Ask the user if they want to use the default
  ;; config, or provide the path to another one
  (setq config-path (read-file-name
		     "Path to config file: "
		     config-dir
		     nil
		     t
		     "config.org"))

  ;; Append a line to .emacs which loads the
  ;; config file at startup
  (write-region
   (concat "(org-babel-load-file \"" config-path "\")")
   nil
   "~/.emacs"
   'append)

  ;; Load the config, and install all the packages
  (org-babel-load-file config-path))
