(provide 'init-ui)

;; 关闭工具栏
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)


;; 更改光标样式
(setq-default cursor-type 'bar)


;; 关闭启动画面
(setq-default inhibit-splash-screen 1)


;; 全屏
(setq initial-frame-alist (quote ((fullscreen . maximized))))


;; 显示当前行
(global-hl-line-mode t)
