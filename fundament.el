;;设置个人信息
(setq user-full-name "maming")
(setq user-mail-address "hqjma@sina.com")

;;用y/n代替yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;高亮显示括号匹配
(custom-set-variables '(show-paren-mode t))

;;不生成#filename#临时文件
(setq auto-save-default nil)

;;支持外部粘贴
(setq x-select-enable-clipboard t)

;;设置tab宽度为4
(setq-default indent-tabs-mode nil)
(setq tab-width 4 c-basic-offset 4)

;;设置左右分屏可以调整大小
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)

(provide 'fundament)
