(provide 'setup-org-mode)

;; set todo timestamp
(setq org-log-done 'time)

(setq org-time-stamp-custom-formats '("<%m/%d/%y %U>" . "<%m/%d/%y %U %H:%M>"))
(require 'ox-publish)
(setq org-publish-project-alist
      '(
        ;; 把各部分的配置文件写到这里面来
        ("blog-notes"
         :base-directory "~/webpages/org"
         :base-extension "org"
         :publishing-directory "~/webpages/sunhualing.github.io"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4             ; Just the default for this project.
         :auto-preamble t
         :section-numbers nil
         :author "Sun"
         :email "Sun@NSB.com"
         :auto-sitemap t                ; Generate sitemap.org automagically...
         :sitemap-filename "index.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Index"         ; ... with title 'Sitemap'.
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d %t"
         )
        ("blog-static"
         :base-directory "~/webpages/org"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/webpages/sunhualing.github.io"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog" :components ("blog-notes" "blog-static"))
        ))
