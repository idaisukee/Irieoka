(require 's)

(defun Irieoka-wiki-link (name)
    (s-concat "[" name "]" "(" name ")"))

(defun Irieoka-wiki-link-command nil
    (interactive)
        (let*
            (
                (name (region-to-string (region-beginning) (region-end)))
                (output (Irieoka-wiki-link name)))
            (kill-region (region-beginning) (region-end))
            (insert output)))

(provide 'Irieoka)
