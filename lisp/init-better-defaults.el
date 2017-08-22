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


;; 缩写
 (abbrev-mode t)
  (define-abbrev-table 'global-abbrev-table '(
                                              ("8gj" "guojing")
                                              ))

;; 简化yes or no
(fset 'yes-or-no-p 'y-or-n-p)


;; 代码缩进
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))
