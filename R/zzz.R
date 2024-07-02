.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Verze ", packageVersion(pkgname), 
                        " balíčku ", pkgname, ". Pro přednastavení fontu použijte funkci asitis_init()")
}