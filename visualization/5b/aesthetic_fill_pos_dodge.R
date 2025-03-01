library(ggplot2)

plot.dki <- ggplot(data = penduduk.dki, aes(x = NAMA.KABUPATEN.KOTA, y = JUMLAH, fill = JENIS.KELAMIN))

plot.dki + geom_bar(stat = "identity", position = "dodge")

