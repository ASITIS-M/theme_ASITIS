#' Initialisation of Nunito font, Cairo bitmap printing type
#' You can use asitis_init() or just init()
#'
#' @examples 
#' asitis_init()
#' @export
asitis_init <- function(){
  options(bitmapType = "cairo")
  
  assign("png", custom_png, envir = .GlobalEnv)
  
  # inicializace písma Nunito
  sysfonts::font_add_google("Nunito", "nunito")
  showtext::showtext_auto()
  showtext::showtext_opts(dpi = 96)
}

init <- asitis_init
