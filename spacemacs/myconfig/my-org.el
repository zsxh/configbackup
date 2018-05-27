;; org table 字体
(custom-set-faces
 '(org-table ((t (:foreground "#6c71c4" :family "Ubuntu Mono")))))

;; org agenda
(setq org-directory "~/org")
(setq org-agenda-files '("~/org/gtd"))
(setq org-default-notes-file (concat org-directory "/gtd/caputure.org"))
(spacemacs/set-leader-keys-for-major-mode 'org-mode
  "Cx" 'org-clock-report)

;; Automatic latex image toggling when cursor is on a fragment
(defvar org-latex-fragment-last nil
  "Holds last fragment/environment you were on.")

(defun org-latex-fragment-toggle ()
  "Toggle a latex fragment image "
  (interactive)
  (and (eq 'org-mode major-mode)
      (let* ((el (org-element-context))
              (el-type (car el)))
        (cond
          ;; were on a fragment and now on a new fragment
          ((and
            ;; fragment we were on
            org-latex-fragment-last
            ;; and are on a fragment now
            (or
            (eq 'latex-fragment el-type)
            (eq 'latex-environment el-type))
            ;; but not on the last one this is a little tricky. as you edit the
            ;; fragment, it is not equal to the last one. We use the begin
            ;; property which is less likely to change for the comparison.
            (not (= (org-element-property :begin el)
                    (org-element-property :begin org-latex-fragment-last))))
          ;; go back to last one and put image back
          (save-excursion
            (goto-char (org-element-property :begin org-latex-fragment-last))
            (org-preview-latex-fragment))
          ;; now remove current image
          (goto-char (org-element-property :begin el))
          (let ((ov (cl-loop for ov in (org--list-latex-overlays)
                          if
                          (and
                            (<= (overlay-start ov) (point))
                            (>= (overlay-end ov) (point)))
                          return ov)))
            (when ov
              (delete-overlay ov)))
          ;; and save new fragment
          (setq org-latex-fragment-last el))

          ;; were on a fragment and now are not on a fragment
          ((and
            ;; not on a fragment now
            (not (or
                  (eq 'latex-fragment el-type)
                  (eq 'latex-environment el-type)))
            ;; but we were on one
            org-latex-fragment-last)
          ;; put image back on
          (save-excursion
            (goto-char (org-element-property :begin org-latex-fragment-last))
            (org-preview-latex-fragment))
          ;; unset last fragment
          (setq org-latex-fragment-last nil))

          ;; were not on a fragment, and now are
          ((and
            ;; we were not one one
            (not org-latex-fragment-last)
            ;; but now we are
            (or
            (eq 'latex-fragment el-type)
            (eq 'latex-environment el-type)))
          (goto-char (org-element-property :begin el))
          ;; remove image
          (let ((ov (cl-loop for ov in (org--list-latex-overlays)
                          if
                          (and
                            (<= (overlay-start ov) (point))
                            (>= (overlay-end ov) (point)))
                          return ov)))
            (when ov
              (delete-overlay ov)))
          (setq org-latex-fragment-last el))))))

(add-hook 'post-command-hook 'org-latex-fragment-toggle)

;; org latex fragment 预览图大小
(defun update-org-latex-fragments ()
  (org-toggle-latex-fragment '(16))
  (plist-put org-format-latex-options :scale text-scale-mode-amount)
  (org-toggle-latex-fragment '(16))
  )
(add-hook 'text-scale-mode-hook 'update-org-latex-fragments)


(provide 'my-org)
