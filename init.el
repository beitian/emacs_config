(setq load-path (cons "~/.emacs.d" load-path))
;;(add-to-list 'load-path' "~/.emacs.d/org-mode.el")
(require 'org-mode)
(require 'fundament)
(require 'w3m)
(require 'emms)

;; window-numbering
;; emacs 用 M+num 跳转
(require 'window-numbering)

;;mew 邮件
(add-to-list 'load-path "~/.emacs.d/mew")
(autoload 'mew "mew" nil t)
(autoload 'mew-send "mew" nil t)

(if (boundp 'read-mail-command)
    (setq read-mail-command 'mew))

(autoload 'mew-user-agent-compose "mew" nil t)
(if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
(if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
        'mew-user-agent
        'mew-user-agent-compose
        'mew-draft-send-message
        'mew-draft-kill
        'mew-send-hook))

;;cedet
(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
(global-ede-mode t)                      ; Enable the Project management system

(global-srecode-minor-mode 1)            ; Enable template insertion menu
;; 自动补全
(semantic-load-enable-minimum-features)
(semantic-load-enable-code-helpers)      ; Enable prototype help and smart completion 
;;(semantic-load-enable-excessive-code-helpers)
(semantic-load-enable-semantic-debugging-helpers)  ;高亮最近修改的和错误代码
(require 'semantic-ia)
;;(require 'semantic-gcc)
;;(semantic-add-system-include "/you/c++/path" 'c++-mode)  ;增加lib路径


(global-set-key [C-tab] 'semantic-ia-complete-symbol-menu)
;;跳转
(global-set-key [f1] 'semantic-ia-fast-jump)  ;;跳到光标处符号的定义位置
(global-set-key [C-f1]                        ;;跳回原来定义处
                (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first))))


;;支持markdown模式
(add-to-list 'load-path "~/.emacs.d")
(autoload 'markdown-mode "markdown-mode.el"
    "Major mode for editing Markdown files" t)
(setq auto-mode-alist
    (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;让markdown正常显示中文
(setq default-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; gdb全局快捷键
(setq gdb-many-windows t)
(add-hook 'gdb-mode-hook '(lamba () 
                            (define-key  c-mode-base-map [(f6)] 'gud-print)
                            (define-key c-mode-base-map [(f5)] 'gud-break)))
(global-set-key [f10] 'gud-next)
(global-set-key [f9] 'gud-step)
(global-set-key [f8] 'gud-run)
(global-set-key [C-f8] 'gud-stop)
(global-set-key [f12] 'compile)


;;el-get
;;(add-to-list 'load-path "~/.emacs.d/el-get")
;;(unless (require 'el-get nil 'noerror)
;;  (with-current-buffer
;;      (url-retrieve-synchronously
;;       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
;;    (goto-char (point-max))
;;    (eval-print-last-sexp)))
;;(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;;(el-get 'sync)

;;自动补全--jedi
;;(setq jedi:setup-keys t)
;;(setq jedi:complete-on-dot t)
;;(add-hook 'python-mode-hook 'jedi:setup)

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
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ede-project-directories (quote ("/home/maming/program/python/workspace/ops/ops")))
 '(show-paren-mode t)
 '(truncate-partial-width-windows nil))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )


(put 'dired-find-alternate-file 'disabled nil)
(put 'downcase-region 'disabled nil)
