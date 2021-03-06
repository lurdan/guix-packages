(define-module (gnu packages font-hackgen)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system font)
  #:use-module (gnu packages fontutils))

(define-public font-hackgen
  (package
    (name "font-hackgen")
    (version "2.2.2")
    (home-page "https://github.com/yuru7/HackGen")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/yuru7/HackGen/releases/download/v"
                    version
                    "/HackGen_v"
                    version
                    ".zip"))
              (sha256
               (base32
                "0v3mmzn9svmwx1abd3j4j7rjhr1444kwvdswbqyg0iaqw6wzdn0v"))))
    (build-system font-build-system)
    (synopsis "Hackgen Japanese TrueType font")
    (description "")
    (license license:silofl1.1)))
