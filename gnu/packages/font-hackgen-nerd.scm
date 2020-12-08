(define-module (gnu packages font-hackgen-nerd)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system font)
  #:use-module (gnu packages fontutils))

(define-public font-hackgen-nerd
  (package
    (name "font-hackgen-nerd")
    (version "2.2.2")
    (home-page "https://github.com/yuru7/HackGen")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/yuru7/HackGen/releases/download/v"
                    version
                    "/HackGenNerd_v"
                    version
                    ".zip"))
              (sha256
               (base32
                "1wnsx8snakqs2jb92mv90f8y9i01fj6sp2fmh672dvrzs8k49avg"))))
    (build-system font-build-system)
    (synopsis "HackgenNerd Japanese TrueType font")
    (description "")
    (license license:silofl1.1)))
