#' Initialisation of Nunito font (by showtext), Cairo bitmap printing type, assigning function custom_png to png function name (instead of png from grDevices), assigning value 1 to variable i
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
  
  print("font Nunito nahrán jako 'nunito', dpi = 96")
  
  assign("i", 1)
}


#' Initialisation of Nunito font (by showtext), Cairo bitmap printing type, assigning function custom_png to png function name (instead of png from grDevices), assigning value 1 to variable i
#' You can use asitis_init() or just init()
#'
#' @examples 
#' asitis_init()
#' @export
init <- asitis_init
