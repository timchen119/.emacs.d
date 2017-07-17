
(defun go-mode-setup()
  (require 'auto-complete-config)
  (require 'go-autocomplete)
  (add-to-list 'load-path (concat (getenv "GOPATH") "/src/github.com/golang/lint/misc/emacs"))
  (require 'golint)
  (add-to-list 'load-path (concat (getenv "GOPATH") "/src/github.com/dougm/goflymake"))
  (require 'go-flymake)
  (require 'go-flycheck)

  (setq compile-command "go build -v && go test -v && go vet")
  (define-key (current-local-map) "\C-c\C-c" 'compile)
  (go-eldoc-setup)
  (setq gofmt-command "goimports")
  (add-hook 'before-save-hook 'gofmt-before-save)
  (local-set-key (kbd "M-.") 'godef-jump)

  (add-to-list 'ac-modes 'go-mode)
  (ac-config-default))

(add-hook 'go-mode-hook 'go-mode-setup)
