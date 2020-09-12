library(arules)
library(arulesViz)
data("Groceries")
summary(Groceries)
str(Groceries)
inspect(Groceries)
?apriori
gr_rules <- apriori(Groceries)
