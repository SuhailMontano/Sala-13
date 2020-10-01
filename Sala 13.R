#########Sala 13##########
#Presenta: Suhail Montaño Sánchez#
#UAEH#DCEA#ICEA#
#1. Realiza un heatmap con tus datos
#2. Si tus datos no se prestan a heatmap ocupa otros
#3. Realiza una conclusión derivada de tus hallazgos
#4. Sube tu código (PLATILLA ENTRAGAS EN CÓDIGO GITHUB).
#5. Sube también tu entregable en formato PDF con portada institucional
###########################################################################

#Importar Dataset(From text(base))

#Visualizar la data
View(PCI)

#Nombrar los datos 
row.names(PCI) <- PCI$ESTADO

#Visualizar la data
View(PCI)

#Valores X a la primera columna 
PCI <- PCI[,2:6]

#Visualizar la data
View(PCI)

#Crear la matriz de datos
PCI <- data.matrix(PCI)

#Visualizar la data
View(PCI)

#Determinar el tipo de dato
class(PCI)

#Cargar Paleta de colores
library("RColorBrewer")

#Crear Heatmap
heatmap(PCI, scale = "colum")

Colores_PCI <- brewer.pal(9,"Reds")


heatmap(PCI, 
        scale = "colum",
        col = Colores_PCI)

#Asignar leyendas
heatmap(PCI, 
        scale = "colum",
        col = Colores_PCI ,
        Colv = NA,
        margins = c(5,10),
        xlab = "Corrupción", 
        ylab = "Estados",
        main = "Percepción de corrupción")
