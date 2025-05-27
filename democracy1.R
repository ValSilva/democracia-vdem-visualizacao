############################################
# Criar uma animação gráfica mostrando a evolução dos diferentes índices de democracia no Brasil entre 1900 e 2023, 
# com base nos dados do projeto V-Dem (Varieties of Democracy).

install.packages("remotes")                     # Instala o pacote que permite instalar outros pacotes direto do GitHub
remotes::install_github("vdeminstitute/vdemdata")  # Instala o pacote oficial com os dados do V-Dem

library(vdemdata)     # Carrega a base de dados do V-Dem
library(tidyverse)    # Pacote de manipulação de dados e gráficos (ggplot2, dplyr, tidyr, etc.)
library(gganimate)    # Permite animar gráficos do ggplot2

getwd()  # Verifica o diretório de trabalho atual
setwd("C:/...")  # Define o diretório onde os arquivos serão salvos

# Filtra apenas os anos de 1900 em diante para o Brasil.
# Seleciona as 5 principais variáveis de democracia do V-Dem:
base <- vdemdata::vdem  %>%
  select("country_name","year","v2x_delibdem", "v2x_egaldem", "v2x_polyarchy","v2x_partipdem", "v2x_libdem") %>% 
  filter(year>=1900 & country_name=="Brazil")

# Renomea as variáveis para visualização
colnames(base)[3] <- "Democracia Deliberativa"
colnames(base)[4] <- "Democracia Igualitária"
colnames(base)[5] <- "Democracia Eleitoral"
colnames(base)[6] <- "Democracia Participativa"
colnames(base)[7] <- "Democracia Liberal"


# Transforma os dados de formato largo para longo, onde cada linha representa uma observação por ano e tipo de democracia.
dependencia_long <- base%>%pivot_longer(!c("year","country_name"), names_to="tipo", values_to="ratio")
dependencia_long <- dependencia_long%>%mutate(ratio1=round(ratio, digits = 2))

# Cria um gráfico de linhas com ggplot2, onde cada linha é um tipo de democracia.
#Usa gganimate para animar a linha ao longo do tempo com transições suaves (transition_reveal + ease_aes).

animacion <- dependencia_long %>%
  ggplot(aes(x=year, y=ratio))+
  geom_line(aes(color=tipo), size = 1.3,show.legend = T) +
  theme_classic() + 
  scale_x_continuous(breaks = seq(1900, 2021, by = 10))+
  scale_colour_manual(values = c("orange", "green", "blue","red", "black")) +
  theme(panel.grid.major.x  = element_line(size = 0.5, colour = "grey80",linetype = "dashed"),
        plot.title =element_text(family='', face='bold', colour='black', size=20,hjust = 0.5) ,
        plot.caption = element_text(hjust = -0, size = 9))+
  labs(y="",x="", caption="Fonte: V-Dem.
Elaboração: Valéria Silva (Cedeplar | UFMG)") +guides(color=guide_legend(""))+ 
  ggtitle("Índices de Democracia no Brasil 1900-2024")+ transition_reveal(year)  +enter_fade() +
  exit_fade() + 
  ease_aes('quadratic-in-out') 

# Gera o GIF animado com a evolução dos índices de democracia.
animate(
  plot = animacion,
  height = 500,
  width = 800)

# Salva o resultado como gif_democracia3.gif na pasta definida no setwd().
anim_save("gif_democracia3.gif")


