(provide 'init-keybindings)



(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h C-f") 'counsel-describe-function) ;;查看这个函数
(global-set-key (kbd "C-h C-v") 'counsel-describe-variable) ;;查看这个变量

;; counsel-git 快捷键
(global-set-key (kbd "C-c p f") 'counsel-git)


;; 一次性缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)


;; hipe补全
(global-set-key (kbd "s-/") 'hippie-expand)

