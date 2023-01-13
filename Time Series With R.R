data <- read.csv('AirPassengers.csv')

data

head(data)

table(data$X.Passengers)

summary(data)


class(data)


data['Passengers'] <- data['x.Passengers']
data <- data[, !names(data) %in% c ('x.Passengers')]


head(data)


data.ts = ts(data, frequency = 12, start=c(1949, 01))
plot.ts(data.ts)
plot(data$X.Passengers, type = '0')