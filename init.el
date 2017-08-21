
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)



;;


;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 更改光标样式
(setq-default cursor-type 'bar)

;; 关闭启动画面
(setq-default inhibit-splash-screen 1)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

;; 禁止emacs自动生成备份文件
(setq make-backup-files nil)

;; org模式中注释里语法高亮
(require 'org)
(setq org-src-fontify-natively t)

;; 替换模式
(delete-selection-mode t)

;; 全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))

;; 括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 显示当前行
(global-hl-line-mode t)

;; 加载主题
;; (load-theme 'monokai t)

;; hungry-delete-mode
(require 'hungry-delete)
(global-hungry-delete-mode)


(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h C-f") 'counsel-describe-function) ;;查看这个函数
(global-set-key (kbd "C-h C-v") 'counsel-describe-variable) ;;查看这个变量
(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)






;; 缩写
 (abbrev-mode t)
  (define-abbrev-table 'global-abbrev-table '(
                                              ("8gj" "guojing")
                                              ))


















(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   (quote
    ("3629b62a41f2e5f84006ff14a2247e679745896b5eaa1d5bcfbc904a3441b0cd" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages (quote (company elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
