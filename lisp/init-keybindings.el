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


;; C-x C-j 进入当前文件夹的Dired模式
(require 'dired-x)


;; C-n C-p 补全
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))


;; evil-leader key
(evil-leader/set-key
  "ff" 'find-file
  "bb" 'switch-to-buffer
  "0"  'select-window-0
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "w/" 'split-window-right
  "w-" 'split-window-below
  ":"  'counsel-M-x
  "wM" 'delete-other-windows
  )
 
