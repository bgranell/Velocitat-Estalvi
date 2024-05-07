library(readxl)
library(openxlsx)
library(dplyr)
library(ggplot2)


dades_estalvi <- read_excel("C:/Users/admin/Desktop/dades estalvi.xlsx")
dades_estalvi

dades_taxa_consum2015 <- mutate(dades_estalvi, taxa_consum2015 = 1-`2015**`)
print(dades_taxa_consum2015)

dades_coixí2015 <- mutate(dades_taxa_consum2015,
                          coixí_2015 = 1/((1-taxa_consum2015)/taxa_consum2015))

print(dades_coixí2015)

filtre_dades_coixí1<- dades_coixí2015[(dades_coixí2015$coixí_2015 < 41),]
filtre_dades_coixí2 <- filtre_dades_coixí1[(filtre_dades_coixí1$coixí_2015 > 0),]
filtre_dades_coixí2


GRÀFIC_BASE <- ggplot(filtre_dades_coixí2, aes(reorder(Característica,coixí_2015), coixí_2015))+
         geom_point()
GRÀFIC_BASE

GRÀFIC_BO <- GRÀFIC_BASE + ggtitle("Nº Mesos per a un estalvi igual a les despeses mensuals") +
  scale_y_continuous(breaks = c(0,5,10,15,20,25,30,35,40,45)) +
  theme(plot.title = element_text(family = "Serif",size = rel(1.0), vjust=0.5,
                                  hjust = 0.5, face = "italic")) +
  labs(x="País", y="Nº Mesos") +
  theme(axis.text.x= element_text(angle=90))

GRÀFIC_BO
