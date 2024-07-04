.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Verze ", packageVersion(pkgname), 
                        " balíčku ", pkgname, ". Pro přednastavení můžete použít funkci asitis_init()")
}