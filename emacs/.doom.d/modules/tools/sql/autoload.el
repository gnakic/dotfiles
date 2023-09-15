;;; tools/sql/autoload.el -*- lexical-binding: t; -*-

(defvar +sql-default-connections-file "~/.ejc-sql/connections.el"
  "Path to connections file.")

;;;###autoload
(defun +sql/load-connections ()
  "Load the connections configuration file"
  (interactive)
  (when (file-exists-p +sql-default-connections-file)
    (load +sql-default-connections-file)))
