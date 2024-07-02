#' Initialisation of Nunito font, Cairo bitmap printing type
#'
#' @examples 
#' init()
#' @export
init <- function(){
  options(bitmapType = "cairo")
  
  assign("png", custom_png, envir = .GlobalEnv)
  
  # inicializace písma Nunito
  showtext::font_add_google("Nunito", "nunito")
  showtext::showtext_auto()
  showtext::showtext_opts(dpi = 96)
}