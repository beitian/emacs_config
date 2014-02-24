(add-to-list 'load-path "~/software/emacs-plugin/w3m/")
(require 'w3m)
(require 'w3m-load)

;settings
(setq w3m-use-cookies t)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-home-page "http://www.google.com")

(setq w3m-default-display-inline-image t) 
(setq w3m-default-toggle-inline-images t)

(provide 'w3m)
