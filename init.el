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

;;支持markdown模式
(add-to-list 'load-path "~/.emacs.d")
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
    (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;el-get
(add-to-list 'load-path "~/.emacs.d/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;;自动补全--jedi
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
(add-hook 'python-mode-hook 'jedi:setup)

;; (global-linum-mode)
(global-font-lock-mode 1)
;; disable backup
(setq backup-inhibited t)
;; disable auto save

(setq-default indent-tabs-mode nil)
(column-number-mode 1)
;; disable startup screen

(setq inhibit-startup-message t)
(setq enable-local-variables :all)

(custom-set-variables
 '(truncate-partial-width-windows nil))

(custom-set-faces)


