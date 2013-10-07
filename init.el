(setq load-path (cons "~/.emacs.d" load-path))
;;(add-to-list 'load-path' "~/.emacs.d/org-mode.el")
(require 'org-mode)
(require 'fundament)

;;emms
;;(add-to-list 'load-path "~/software/emacs-plugin/emms/lisp/")
;;(require 'emms-setup)
;;(emms-standard)
;;(emms-default-players)

(require 'emms)

;; (global-linum-mode)
(global-font-lock-mode 1)
;; disable backup
(setq backup-inhibited t)
;; disable auto save

(setq auto-save-default nil)
(setq-default indent-tabs-mode nil)
(column-number-mode 1)
;; disable startup screen

(setq inhibit-startup-message t)
(setq enable-local-variables :all)

(custom-set-variables
 '(truncate-partial-width-windows nil))

(custom-set-faces)


