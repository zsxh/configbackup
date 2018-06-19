;;; -*- lexical-binding: t -*-

(defun my-setup-indent (n)
  ;; java/c/c++
  (setq c-basic-offset n)

  ;; python
  (setq python-indent-offset n)
  (setq python-indent-guess-indent-offset nil)

  ;; shell
  (setq sh-indentation n)
  (setq sh-basic-offset n)

  ;; json
  ;; add-hook 'json-mode-hook
  ;;           lexical-let ((x n))
  ;;             lambda ()
  ;;               ;; Make the variable buffer local so that it does not conflict with js-mode for JavaScript files
  ;;               (make-local-variable 'js-indent-level)
  ;;               ;; 因为emacs-lisp用的是坑爹的动态域绑定，所以只好设置为常量2
  (add-hook 'json-mode-hook
            (lambda ()
              ;; Make the variable buffer local so that it does not conflict with js-mode for JavaScript files
              (make-local-variable 'js-indent-level)
              (setq js-indent-level n)))

  ;; web development
  ;; (setq coffee-tab-width n) ; coffeescript
  ;; (setq javascript-indent-level n) ; javascript-mode
  ;; (setq js-indent-level n) ; js-mode
  ;; (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  ;; (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  ;; (setq web-mode-css-indent-offset n) ; web-mode, css in html file
  ;; (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
  ;; (setq css-indent-offset n) ; css-mode
  )

(my-setup-indent 2)

(provide 'my-codestyle)
