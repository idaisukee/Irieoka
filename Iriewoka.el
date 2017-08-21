(require 's)

(defun Iriewoka-wiki-link (name)
    (s-concat "[" name "]" "(" name ")"))

(defun Iriewoka-wiki-link-command nil
    (interactive)
        (let*
            (
                (name (region-to-string (region-beginning) (region-end)))
                (output (Iriewoka-wiki-link name)))
            (kill-region (region-beginning) (region-end))
            (insert output)))

(provide 'Iriewoka)
