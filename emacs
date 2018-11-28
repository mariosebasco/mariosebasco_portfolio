(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(global-set-key (kbd "M-[") 'comment-region)
(global-set-key (kbd "M-]") 'uncomment-region)
(global-set-key (kbd "C-x C-f") 'find-file-other-window)
(global-set-key (kbd "C-x f") 'find-file)
(global-set-key (kbd "C-x C-o") 'other-window)
(global-set-key (kbd "C-x C-b") 'buffer-menu)
