.onAttach <- function(libname, pkgname) {
  packageStartupMessage("Verze ", packageVersion(pkgname), 
                        " balíčku ", pkgname, ". You can use function asitis_init() for all necessary settings")
}