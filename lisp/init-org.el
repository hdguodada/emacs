(provide 'init-org)


;; org模式中注释里语法高亮
(require 'org)
(setq org-src-fontify-natively t)


(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)
