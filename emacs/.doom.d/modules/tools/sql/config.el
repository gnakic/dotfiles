;;; tools/sql/config.el -*- lexical-binding: t; -*-

(defvar +sql-default-connections-file "~/.ejc"
  "Path to connections file.")

(use-package! ejc-sql :defer t)

(after! ejc-sql
  (load +sql-default-connections-file))

(use-package! ejc-company
  :when (modulep! :completion company)
  :after sql
  :config
  (set-company-backend! 'sql-mode 'company-capf 'ejc-company-backend)
  (setq ejc-complete-on-dot t))

(use-package! sql
  :defer t
  :config
  (map! :localleader
        :map sql-mode-map
        :desc "Open connection" "c" #'ejc-connect
        :desc "Close connection" "k" #'ejc-close-connection))
