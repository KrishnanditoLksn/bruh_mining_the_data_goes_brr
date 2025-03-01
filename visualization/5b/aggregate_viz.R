library(ggplot2)

p <- aggregate(x = list(JUMLAH = penduduk.dki$JUMLAH), FUN = sum, by = list(NAMA.KABUPATEN.KOTA = penduduk.dki$NAMA.KABUPATEN.KOTA,
                                                                            JENIS.KELAMIN = penduduk.dki$JENIS.KELAMIN))

#Bagian plot
plot.dki <- ggplot(data = p, aes(x = NAMA.KABUPATEN.KOTA, y = JUMLAH, fill = JENIS.KELAMIN, label = JUMLAH))

#Bagian Penambahan Layer
plot.dki <- plot.dki + geom_bar(stat = "identity", position = "dodge")

plot.dki <- plot.dki + labs(title = "Jumlah Penduduk DKI Jakarta Umur > 35 - Tahun 2013", x = "Kabupaten/Kota", y = "Jumlah Penduduk")
plot.dki <- plot.dki + theme(axis.text.x = element_text(angle = 45, vjust = 0.5), plot.title = element_text(hjust = 0.5))
plot.dki <- plot.dki + geom_text(position = position_dodge(1.2))
plot.dki