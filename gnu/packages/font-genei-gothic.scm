(define-module (gnu packages font-genei-gothic)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system font)
  #:use-module (gnu packages fontutils))

(define-public font-genei-gothic
  (package
    (name "font-genei-gothic")
    (version "1.1a")
    (home-page "https://okoneya.jp/font/genei-gothic.html")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    ;;"https://okoneya.jp/font/GenEiGothicAll-1.1a.zip"
                     "https://okoneya.jp/font/GenEiGothicAll-"
                     version
                     ".zip"
                     ))
              (file-name (string-append
                          "GenEiGothicAll-"
                          version
                          ".zip.gz"))
              (sha256
               (base32
                "0ggryz1pd7x8g3llcjpkyy6c4mrz3f9iq2b94q0m0k4yq6yab2wa"))))
    (build-system font-build-system)
    (synopsis "Genei Gothic Japanese TrueType fonts")
    (description "")
    (license license:silofl1.1)))
