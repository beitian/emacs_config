;;emms
(add-to-list 'load-path "~/software/emacs-plugin/emms/lisp/")
(require 'emms-setup)
(emms-standard)
(emms-default-players)

(provide 'emms)
