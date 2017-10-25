(provide 'setup-packages)

(require 'setup-org-mode)
(require 'setup-smartparens)
(require 'setup-golden-ratio)
(require 'setup-helm)
(require 'setup-helm-gtags)
;; (require 'setup-ggtags)
(require 'setup-cedet)
(require 'setup-company)
(require 'setup-projectile)
(require 'setup-yasnippet)
(require 'setup-auto-complete)
(require 'setup-tramp)
;; (require 'setup-session)
(require 'setup-saveplace)
(require 'setup-web-mode)

(require 'go-autocomplete)

(require 'bookmark+)
(setq diredp-hide-details-initially-flag nil)
(require 'dired+)
(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

(require 'dtrt-indent)
(dtrt-indent-mode 1)

(require 'ws-butler)
(add-hook 'prog-mode-hook 'ws-butler-mode)

(require 'yasnippet)
(yas-global-mode 1)

(require 'volatile-highlights)
(volatile-highlights-mode t)

(require 'clean-aindent-mode)
(add-hook 'prog-mode-hook 'clean-aindent-mode)

(require 'dtrt-indent)
(dtrt-indent-mode 1)
(setq dtrt-indent-verbosity 0)

(require 'ws-butler)
(add-hook 'c-mode-common-hook 'ws-butler-mode)
(add-hook 'text-mode 'ws-butler-mode)
(add-hook 'fundamental-mode 'ws-butler-mode)

(require 'undo-tree)
(global-undo-tree-mode)

;; package anzu
(require 'anzu)
(global-anzu-mode)

;; package iedit
(setq iedit-toggle-key-default nil)
(require 'iedit)

;; package duplicate-thing
(require 'duplicate-thing)

(require 'highlight-symbol)

(require 'elpy)
(elpy-enable)

(setq x-select-enable-clipboard t)
(setq x-select-enable-primary t)


;; the config for the javascript
;;(require 'company-mode)
(require 'company-tern)

(add-to-list 'company-backends 'company-tern)
(add-hook 'js3-mode-hook (lambda ()
                           (tern-mode)
                           (company-mode)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

(require 'indium)
(require 'setup-ycmd)
