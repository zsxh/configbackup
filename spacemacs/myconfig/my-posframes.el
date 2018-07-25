(use-package ivy-posframe
  :ensure t
  :after ivy
  :config (progn
            (setq ivy-display-function #'ivy-posframe-display)
            (ivy-posframe-enable)))

(use-package flycheck-posframe
  :ensure t
  :after flycheck
  :config (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))

(provide 'my-posframes)
