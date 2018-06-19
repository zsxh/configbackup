;; (require 'org-page)

(use-package org-page
  :after org
  :config
  (progn
    (setq op/repository-directory "~/org/zsxh.github.io")
    (setq op/site-domain "https://zsxh.github.io/")
    (setq op/personal-disqus-shortname "zsxhspace")
    (setq op/site-main-title "Hello World的一千种写法")

    (setq op/repository-org-branch "source") ;; default is "source"
    (setq op/repository-html-branch "master")  ;; default is "master"

    (setq op/personal-github-link "https://github.com/zsxh")

    (setq op/personal-google-analytics-id "UA-119871562-1")

    (setq op/theme 'mdo)

    ;; (setq op/highlight-render 'htmlize)
    ))

(provide 'my-org-page)
