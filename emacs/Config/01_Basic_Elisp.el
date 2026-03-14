; (code...)
; setq               --> Function Name
; t                  --> true
; nil                --> false
; some-variable-name --> Variable Naming
;;                 --> Comment

;; Basic
(setq inhibit-startup-message t) ;; Disable Welcome Secreen
(setq visible-bell t) ;; Alert

;; You can also write like this
(setq inhibit-startup-message t
      visible-bell t)

; Some Config
(setq inhibit-startup-message t)
(setq visible-bell t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)


;(load-theme 'modus-vivendi t)
(load-theme 'deeper-blue t)

(recentf-mode 1) ; List Files $> recentf-open-files

; Remember MiniBuffer Prompt History
; M-x 
; M-n
; M-p
(setq history-length 25)
(savehist-mode 1)

(save-place-mode 1); remember corser location

(setq use-dialog-box nil) ; Don't pop up UI

(global-auto-revert-mode 1) ; auto refrach
(setq global-auto-revert-non-file-buffers 1) ; auto refrach buffer
