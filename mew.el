(setq mew-config-alist
      '((anjuke
        (proto    "%")
        (name    "马明")
        (user    "mingma")
        (mail-domain    "anjuke.com")
        (imap-auth    t)
        (imap-server    "imap.anjuke.com")
        (imap-user    "mingma@anjuke.com")
        (imap-port    "143")
        (smtp-auth    t)
        (smtp-user    "mingma@anjuke.com")
        (smtp-server    "stmp.anjuke.com")
        (smtp-port    "25")
        (smtp-auth-list    ("PLAIN" "LOGIN" "CRAM-MD5"))
       ))
)

;; save password
(setq mew-use-cached-passwd t)

(provide 'mew)
