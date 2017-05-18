;;;; This script sets up emacs for a config file
;;;; written in org mode.
;;;;
;;;; It should only be executed once, when the config is first used.
;;;; You should restart emacs afterwards, to make sure that all
;;;; packages get loaded properly.

;; Install use-package, as it's not explictly installed
;; by the config
(package-install "use-package")

(let (config-path)
  ;; Get the path to the config file which is in
  ;; the same folder as this script
  (setq config-path (concat
		     (file-name-buffer
		      (or load-file-name buffer-file-name))
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
