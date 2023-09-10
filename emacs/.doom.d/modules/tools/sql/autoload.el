;;; tools/sql/autoload.el -*- lexical-binding: t; -*-

(defvar +sql-default-connections-file "~/.ejc"
  "Path to connections file.")

;;;###autoload
(defun +sql/load-connections ()
  "Reload the connections configuration file"
  (load +sql-default-connections-file))
