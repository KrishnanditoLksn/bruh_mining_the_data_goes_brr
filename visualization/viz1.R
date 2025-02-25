library(ggplot2)

ggplot()+labs(title = "Visualisasi Data")

contohPlot <- ggplot()
contohPlot <- contohPlot+labs(title = "Judul Perbaikan")
contohPlot <- contohPlot + labs(title = "JUDUL TITLE",subtitle = "Subtitle",x="Sumbu X" , y="Sumbu Y")
contohPlot


penduduk_dki <- read.csv("dkikepadatankelurahan2013.csv",sep = ",")
str(penduduk_dki)

penduduk_dki[c("NAMA.KELURAHAN","LUAS.WILAYAH..KM2.")]

penduduk_viz <-ggplot(data=penduduk_dki, aes(x=LUAS.WILAYAH..KM2.,y=KEPADATAN..JIWA.KM2.,color=NAMA.KABUPATEN.KOTA))
penduduk_viz + geom_point()+labs(title = "Luas Wilayah vs Kepadatan Penduduk DKI Jakarta",subtitle = "Luas vs Kepadatan",x="Luas wilayah (km2)",y="Kepadatan Jiwa per km2",color="Nama Kabupaten/Kota")+theme(plot.title = element_text(hjust = 0.5))

plot_kepadatan <- ggplot(data = penduduk_dki,aes(x=KEPADATAN..JIWA.KM2.,fill=NAMA.KABUPATEN.KOTA))
plot_kepadatan + geom_histogram(binwidth = 10000)
