#' NHL Shot Location Map
#' 
#' Creates a shot location plot. Calls geom_point() with an image
#' of an NHL rink as the background. 
#' @param ... Passed to [ggplot2::geom_point()]
#' @keywords ggplot geom
#' @examples
#' library(ggplot2)
#' x_coord <- c(1,5,10)
#' y_coord <- c(5,10,15)
#' data <- data.frame(x,y)
#' ggplot(data, aes(x=x_coord, y=y_coord)) +
#'     geom_shotplot()
#' @import png
#' @import grid
#' @export
geom_shotplot <- function(...){
  list(annotation_custom(grid::rasterGrob(png::readPNG("man/figures/full-rink.png"), 
                               width = unit(1,"npc"), 
                               height = unit(1,"npc"))),
       geom_point(),
       coord_flip())
}
