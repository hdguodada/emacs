(provide 'init-better-defaults)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)


;; 禁止emacs自动生成备份文件
(setq make-backup-files nil)


;; 替换模式
(delete-selection-mode t)


;; 显示行号
(global-linum-mode 1)


;; 自动更新对应buffer内容
(global-auto-revert-mode t)
