library(ggplot2)


p <- aggregate(x = list(JUMLAH = penduduk.dki$JUMLAH), FUN = sum, by = list(NAMA.KABUPATEN.KOTA = penduduk.dki$NAMA.KABUPATEN.KOTA))


#Plot grafik pie chart
plot.dki <- ggplot(data=p,aes(x="",y=JUMLAH,fill=NAMA.KABUPATEN.KOTA))
plot.dki <- plot.dki + geom_bar(width = 1,stat ="identity")
plot.dki <- plot.dki + coord_polar("y",start=0)
plot.dki