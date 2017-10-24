(provide 'setup-ycmd)
 ;;;;;;;;;;;;;;;;;;;;;;;company;;;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook #'global-company-mode)
;;;;;;;;;;;;;;;;;;;;;;;;;;;flycheck;;;;;;;;;;;;;;;;
(add-hook 'after-init-hook #'global-flycheck-mode)
;;;;;;;;;;;;;;;;;;;emacs-ycmd;;;;;;;;;;;;;;;;;;;
(require 'ycmd)
(add-hook 'after-init-hook #'global-ycmd-mode)
(setq ycmd-force-semantic-completion t)
(setq ycmd-global-config nil)
(set-variable 'ycmd-server-command' ("python" "/home/hualinsu/opensource/ycmd/ycmd"))
(set-variable 'ycmd-global-config' "/home/hualinsu/opensource/ycmd/cpp/ycm/.ycm_extra_conf.py")
(set-variable 'ycmd-extra-conf-whitelist' ("/home/hualinsu/opensource/ycmd/daily_report_system/v1.0/*"))
(require 'company-ycmd)
(company-ycmd-setup)
(require 'flycheck-ycmd)
(flycheck-ycmd-setup)
