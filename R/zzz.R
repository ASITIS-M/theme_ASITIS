.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Verze", packageVersion(pkgname), 
                        " balíčku ", pkgname, "; pro nastavení fontu použijte funkci asitis_init()")
}