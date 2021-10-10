library(ggplot2)

library(ggpubr)

soil <- read.csv("input.csv", header = TRUE)

ggplot(data = soil, mapping = aes(x = BIGScape.Class:Layer, y = Abundance, col=Layer)) + geom_boxplot() + ggtitle("BGC-Class-freq distribution across Metagenomes")  + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + xlab("BiGSCAPE.Class:Layer") + ylab("Number of BGC")

ggplot(data = soil, mapping = aes(x = BIGScape.Class:Site, y = Abundance, col=Site)) + geom_boxplot() + ggtitle("BGC-Class-freq distribution across Metagenomes")  + theme(axis.text.x = element_text(angle = 45, hjust = 1)) + xlab("BiGSCAPE.Class:Site") + ylab("Number of BGC")
