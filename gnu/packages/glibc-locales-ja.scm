(define-module (gnu packages glibc-locales-ja)
  #:use-module (gnu packages base))

(define-public glibc-locales-ja
  (make-glibc-utf8-locales
   glibc
   #:locales (list "ja_JP")
   #:name "glibc-japanese-utf8-locales"))

;;glibc-locales-ja
