(define-module (gnu packages font-moralerspace)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system font)
  #:use-module (gnu packages fontutils))

(define-public font-moralerspace
  (package
    (name "font-moralerspace")
    (version "0.0.11")
    (home-page "https://github.com/yuru7/moralerspace")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/yuru7/moralerspace/releases/download/v"
                    version
                    "/Moralerspace_v"
                    version
                    ".zip"))
              (sha256
               (base32
                "1rkqiz1xfgk82f3dmsh7y5rsm00sfyikd4kybr2imqnggplxg79m"))))
    (build-system font-build-system)
    (synopsis "Moralerspace Japanese TrueType font")
    (description "")
    (license license:silofl1.1)))

(define-public font-moralerspaceHWJPDOC
  (package
    (name "font-moralerspaceHWJPDOC")
    (version "0.0.11")
    (home-page "https://github.com/yuru7/moralerspace")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/yuru7/moralerspace/releases/download/v"
                    version
                    "/MoralerspaceHWJPDOC_v"
                    version
                    ".zip"))
              (sha256
               (base32
                "141z1gwx15h70jcx0bd5hwffkssnd1d37v0frffjm0q51wsxnzji"))))
    (build-system font-build-system)
    (synopsis "Moralerspace Japanese TrueType font")
    (description "")
    (license license:silofl1.1)))

(define-public font-moralerspaceHWNF
  (package
    (name "font-moralerspaceHWNF")
    (version "0.0.11")
    (home-page "https://github.com/yuru7/moralerspace")
    (source (origin
              (method url-fetch)
              (uri (string-append
                    "https://github.com/yuru7/moralerspace/releases/download/v"
                    version
                    "/MoralerspaceHWNF_v"
                    version
                    ".zip"))
              (sha256
               (base32
                "05w3c7k3wknlglanckqg7bbvv3q7pv3w9w3ysy57vzm11z3jwn2h"))))
    (build-system font-build-system)
    (synopsis "Moralerspace Japanese TrueType font")
    (description "")
    (license license:silofl1.1)))
