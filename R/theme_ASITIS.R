#' ASITIS company ggplot theme
#' verze 1.2.1
#'
#' based on ggplot2 theme_bw
#' @param angle.x boolean, if true, values on x axis will be 15° slanted
#' @param title.on.center boolean, if true, plot title will be alignet to center
#' @return ggplot theme
#' @examples 
#' p + theme_ASITIS();
#' p + theme_ASITIS(angle.x = T, title.on.center = T);
#' @export
theme_ASITIS <- function(angle.x = FALSE,
                         title.on.center = FALSE){
  th <- ggplot2::theme_bw()+
    ggplot2::theme(axis.title.x = element_text(size = 20),
          axis.title.y = element_text(size = 20),
          strip.text.x = element_text(size = 30),
          axis.text=element_text(size=15, color = "#58595b"),
          strip.placement = "outside",
          text = element_text(family = "nunito", color = "black"),
          panel.border = element_rect(color = "#96acb5"),
          axis.ticks = element_line(color = "#96acb5"),
          plot.title = element_text(size = 30),
          plot.background = element_blank(),
          legend.position = "bottom",
          legend.title = element_blank(),
          legend.text = element_text(size = 15),
          legend.justification="left",
          legend.direction = "vertical",
          axis.title.y.right = element_text(angle = 90, color = "#19ABDE")
    )
  
    if(title.on.center){
      th <- th + ggplot2::theme(plot.title = element_text(hjust = 0.5),
                       plot.title.position = "plot")  
    }
  
    if(angle.x){
      th <- th + ggplot2::theme(axis.text.x = element_text(angle = 15, vjust = 0.5 ))
    }
  
  return(th)
}