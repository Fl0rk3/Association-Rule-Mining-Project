# Results of Association Rule Mining on Football Transfer Data

library(arules)
library(arulesViz)
library(ggplot2)

getwd()
transfer_data <- read.csv('transfers_ar.csv')

summary(transfer_data)

transfer_trans <- as(transfer_data, "transactions")

summary(transfer_trans)

inspect(transfer_trans[1:5])

itemFrequencyPlot(transfer_trans, topN = 10, col = "skyblue", xlab = "Characteristics", ylab = "Frequency", main = "Item Frequency Distribution in the Transfer Dataset")


set.seed(123)
rules1 <- apriori(transfer_trans, parameter = list(support = 0.1, confidence = 0.6, minlen = 2))

rules1

rules.by.conf<-sort(rules1, by="confidence", decreasing=TRUE)
inspect(head(rules.by.conf))

inspect(sort(rules1, by = "lift", decreasing = TRUE)[1:5])

inspect(sort(rules1, by = "support", decreasing = TRUE)[1:5])


plot(rules1, engine = "ggplot2", main = "Support–Confidence Scatter Plot of Discovered Association Rules")+
  theme_minimal()+
  geom_point(size=3)+
  scale_color_gradient(low = "green", high = "red")

plot(rules1, method="paracoord", control=list(reorder=TRUE), main = "Parallel Coordinates Visualization of Discovered Association Rules")
