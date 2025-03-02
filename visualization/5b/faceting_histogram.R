library(ggplot2)
plot.dki <- ggplot(data=penduduk.dki,aes(x=KEPADATAN..JIWA.KM2.,fill=NAMA.KABUPATEN.KOTA))
#Menambahkan layer
plot.dki <- plot.dki + geom_histogram(binwidth = 10000)
plot.dki <- plot.dki + labs(x="Kepadatan Jiwa (km2)", y="Jumlah Kelurahan", color="Kabupaten/Kota")
plot.dki + facet_wrap( ~ NAMA.KABUPATEN.KOTA, ncol=2)