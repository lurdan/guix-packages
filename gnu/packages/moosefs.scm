(define-module (gnu packages moosefs)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix build-system gnu)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages python)
  #:use-module (gnu packages compression)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages admin))

(define-public moosefs
  (package
   (name "moosefs")
   (version "3.0.117")
   (source (origin
            (method url-fetch)
            (uri (string-append
                  "https://github.com/moosefs/moosefs/archive/refs/tags/v" version ".tar.gz"))
            (sha256 (base32 "1vbycccz93nnx55kflmmab9gqkm8x0yj4wmfma51gir3rb7dlld4"))))
  (native-inputs
    (list libpcap zlib pkg-config))
  (inputs
   (list fuse python))
  (arguments
   '(#:configure-flags '("--with-default-user=mfs --with-default-group=mfs")))
  (build-system gnu-build-system)
  (home-page "https://moosefs.com")
  (synopsis "Open Source, Petabyte, Fault-Tolerant, Highly Performing, Scalable Network Distributed File System (Software-Defined Storage)")
  (description
   "MooseFS is a Fault-tolerant, Highly available, Highly performing, Scaling-out, Network distributed file system. It spreads data over several physical commodity servers, which are visible to the user as one virtual disk. It is POSIX compliant and acts like any other Unix-like file system supporting:

Hierarchical structure: Files and Folders,
File attributes,
Special files: Pipes, Sockets, Block and Character devices,
Symbolic and Hard links,
Security attributes and ACLs.
It works with all applications that require a standard file system.")
  (license license:gpl2)))

moosefs
