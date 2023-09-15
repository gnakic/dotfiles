;;; tools/sql/config.el -*- lexical-binding: t; -*-

(use-package! ejc-sql
  :defer t
  :config
  (setq ejc-temp-editor-file-path "~/.ejc-sql/")
  (add-hook 'ejc-sql-minor-mode-hook
            (lambda ()
              (ejc-eldoc-setup))))

(after! ejc-sql (+sql/load-connections))

(use-package! ejc-company
  :when (modulep! :completion company)
  :after sql
  :config
  (set-company-backend! 'sql-mode 'company-capf 'ejc-company-backend 'company-yasnippet)
  (setq ejc-complete-on-dot t))

(use-package! sql
  :defer t
  :config
  (map! :localleader
        :map sql-mode-map
        :desc "Open connection" "c" #'ejc-connect
        :desc "Close connection" "k" #'ejc-close-connection))


(map! :leader
      (:prefix-map ("o" . "open")
                   (:prefix ("S" . "SQL")
                    :desc "Reload connections config" "r" #'+sql/load-connections
                    :desc "Scratch buffer" "x" #'ejc-get-temp-editor-buffer)))
