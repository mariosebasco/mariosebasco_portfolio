(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;;visual
 '(beacon-mode t)
 '(beacon-color 0.0)
 '(beacon-blink-when-point-moves-vertically 1)
 '(nyan-mode t)
 
 '(inhibit-startup-screen t)
 '(send-mail-function (quote mailclient-send-it)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(custom-set-faces

 '(term-color-black ((t (:foreground "#3F3F3F" :background "#2B2B2B"))))
 '(term-color-red ((t (:foreground "#AC7373" :background "#8C5353"))))
 '(term-color-green ((t (:foreground "#7F9F7F" :background "#9FC59F"))))
 '(term-color-yellow ((t (:foreground "#DFAF8F" :background "#9FC59F"))))
 '(term-color-blue ((t (:foreground "#7CB8BB" :background "#4C7073"))))
 '(term-color-magenta ((t (:foreground "#DC8CC3" :background "#CC9393"))))
 '(term-color-cyan ((t (:foreground "#93E0E3" :background "#8CD0D3"))))
 '(term-color-white ((t (:foreground "#DCDCCC" :background "#656555"))))

 '(term-default-fg-color ((t (:inherit term-color-white))))
 '(term-default-bg-color ((t (:inherit term-color-black))))

 )

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;general
(global-set-key (kbd "M-[") 'comment-region)
(global-set-key (kbd "M-]") 'uncomment-region)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "C-,") 'term)

;; search copy/paste/cut/delete
(global-set-key (kbd "C-;") 'dumb-jump-go-other-window)
(global-set-key (kbd "C-x C-;") 'dumb-jump-go)
(global-set-key (kbd "C-'") 'dumb-jump-back)
(setq dumb-jump-default-project "./")
(global-set-key (kbd "C-Q") 'neotree-toggle)
(setq neo-smart-open t)
(global-set-key (kbd "C-c C-v") 'popup-kill-ring)

;;theme
(load-theme 'misterioso)
(set-cursor-color "#ffffff") 

;;window control
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))
(global-set-key (kbd "C-x C-o") 'other-window)
(global-set-key (kbd "C-x C-f") 'find-file-other-window)
(global-set-key (kbd "C-x f") 'find-file)
(global-set-key (kbd "C-x b") 'buffer-menu)
(global-set-key (kbd "C-x C-b") 'buffer-menu-other-window)


