library(ggplot2)
library(tmap)

P<-ggplot() + 
  geom_sf(data = st_read("ALG-3_boundaries.shx"), size = 3, color = "WHITE", fill = "WHITE") +     
  coord_sf()+
  theme_void(
    base_size = 11,
    base_family = "",
    base_line_size = base_size/22,
    base_rect_size = base_size/22)
 
q<-sticker(P,package="Algiers R user", p_size=10, s_x=1, s_y=.75, s_width=1.3, s_height=1,h_fill="#4287f5", h_color = "#387bd9",
        filename="inst/figures/ggplot2.png")
q
