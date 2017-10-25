(provide 'setup-keys)

(windmove-default-keybindings)

;; comilation
(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-c w") 'whitespace-mode)
(global-set-key (kbd "C-c /") 'ac-complete-filename)
(global-set-key [(control tab)] 'company-complete)
(global-set-key (kbd "M-g") 'goto-line)

;; custom function key bindings
(global-set-key (kbd "C-a") 'prelude-move-beginning-of-line)
(global-set-key (kbd "C-c i") 'indent-region-or-buffer)
(global-set-key (kbd "C-o") 'prelude-smart-open-line-above)
(global-set-key (kbd "M-o") 'prelude-smart-open-line)

;; package comment-dwim-2
(global-set-key (kbd "M-;") 'comment-dwim-2)

;; package zygospore
(global-set-key (kbd "C-x 1") 'zygospore-toggle-delete-other-windows)

;; package yasnippet
(define-key yas-keymap (kbd "<return>") 'yas/exit-all-snippets)
(define-key yas-keymap (kbd "C-e") 'yas/goto-end-of-active-field)
(define-key yas-keymap (kbd "C-a") 'yas/goto-start-of-active-field)
;; disable yasnippet's TAB keybinging
(define-key yas-minor-mode-map [(tab)] nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "M-p") 'yas-expand)

;; package anzu
(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

;; package iedit
(global-set-key (kbd "C-;") 'iedit-mode)

;; package duplicate thing
(global-set-key (kbd "M-c") 'duplicate-thing)

;; keybindings for custom functions
(global-set-key [f6] 'toggle-selective-display)

;; org-mode keybindings
(global-set-key [f12] 'org-agenda)

(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(global-set-key [(f4)] 'indium-run-node)
