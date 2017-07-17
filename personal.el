;; color-theme-modern
(load-theme 'tango-dark t t)
(enable-theme 'tango-dark)

;; global
(setq visible-bell t
      font-lock-maximum-decoration t
      truncate-partial-width-windows nil
      echo-keystrokes 0.1
      create-lockfiles nil
      ;; disable to buckup funciton
      backup-inhibited t
      delete-auto-save-files t
      ;; completion ignore case (lower/upper)
      completion-ignore-case t
      read-file-name-completion-ignore-case t
      inhibit-startup-message t)

(menu-bar-mode -1) 
(tool-bar-mode -1)
(when (display-graphic-p) (set-scroll-bar-mode nil) (toggle-frame-maximized))

;; programming language settings
(setq-default c-basic-offset 8)
(load-user-file "go.el")
