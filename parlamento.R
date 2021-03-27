library(tidyverse)
library(plotly)
library(sf)
library(devtools)
library(tidyverse)


  print()
senado_nacional <- read_csv("C:\Users\Lenovo\Desktop\LABUBA.csv") %>% 

data_senado_nacional<- ggparliament::parliament_data(senado_nacional, #datos originales
                                                       type = "semicircle", # forma del hemiciclo
                                                       parl_rows =3, # cantidad de filas
                                                       party_seats = senado_nacional$seats, # número de bancas 
                                                       plot_order = senado_nacional$orden) %>% #orden de partidos en hemiciclo
  mutate(colour = as.character(colour)) %>% # vector de texto para codigo HEX de colores asignados previamente
  as_tibble() %>%  
  print()
library(tidyverse)
library(ggparliament)
library(ggthemes)


data_senado_nacional %>% as_tibble() %>% 
  ggplot(aes(x, y, colour = party_long)) +
  geom_parliament_seats(size = 7) + # tamaño de bancas (puntos)
  geom_highlight_government(government == 1, colour = "black", size = 8) + # circulo negro al oficialismo
  geom_parliament_bar(party = party_short, label = F) + # barra con proporción de bancas
  draw_majoritythreshold(n = 31, label = F, type = "semicircle") + # dibuja el limite de mayoría 
  scale_colour_manual(values = data_senado_nacional$colour, #asigno colores 
                      limits = data_senado_nacional$party_long)  +
  guides(colour = guide_legend(nrow=7)) + # customiza etiquetas
  labs(title = "SENADO NACIONAL", 
       subtitle = "SENADO - 2021",  
       colour = "Bloques") 
  