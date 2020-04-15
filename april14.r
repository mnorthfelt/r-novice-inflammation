
library(readr)
data01 <- read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')
class(data01)
dim(data01)
data01[30,20]
data01[c(1,3,5),c(10,20)]
# first row, all of the columns
patient_1 <- data01[1, ]
# max inflammation for patient 1
max(patient_1)
sum(patient_1)
# max inflammation for patient 1
max(data01[1, ])
# min inflammation patient 2 day 7
min(data01[2,7])
mean(as.numeric(data01[1, ]))
avg_patient_inflammation <- apply(data01, 1, mean)
avg_day_inflammation <- apply(data01, 2, mean)
plot(avg_day_inflammation)
max_day_inflammation <- apply(data01, 2, max)
plot(max_day_inflammation)
min_day_inflammation <- apply(data01, 2, min)
plot(min_day_inflammation)

