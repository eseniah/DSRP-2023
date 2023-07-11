getwd()
str(top10s)
summary(top10s)
names(top10s)
bpm <- top10s[,6]
mean(top10s$bpm)
median(top10s$bpm)
max(top10s$bpm) - min(top10s$bpm)
var(top10s$bpm)
sd(top10s$bpm)
quantile(top10s$bpm,0.25)
quantile(top10s$bpm,0.75)
129 - 100
mean(top10s$bpm) - 3 * sd(top10s$bpm)
mean(top10s$bpm) + 3 * sd(top10s$bpm)
lower <- 44.15953 
upper <- 192.9317
top10s$bpm[top10s$bpm < lower]
top10s$bpm[top10s$bpm > upper]
top10s$bpm[top10s$bpm > lower & top10s$bpm < upper]
value <- top10s$bpm[top10s$bpm > lower & top10s$bpm < upper]
mean(bpm)
mean(top10s$bpm)
median(top10s$bpm)
mean(value)
median(value)
top10s$bpm
value
mean(value)
median(value)
