library(ggplot2)


penduduk.dki <- read.csv('dkijumlahpenduduk_2_2013.csv', sep = ";")

## Membuat Plot dengan geom_bar
plot.dki <- ggplot(data=penduduk.dki, aes(x = NAMA.KABUPATEN.KOTA))
plot.dki+geom_bar()