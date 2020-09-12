library(arules)
library(arulesViz)
data("Groceries")
summary(Groceries)
str(Groceries)
inspect(Groceries)
?apriori
gr_rules <- apriori(Groceries, parameter = list(supp = .001, conf = .8))
inspect (gr_rules[1:10])
gr_rules <- sort(gr_rules , by = "support", decreasing = T )
inspect (gr_rules[1:10])
gr_rules
redundant_rules <- is.redundant(gr_rules)
redundant_rules
summary(redundant_rules)
gr_rules <- gr_rules[!redundant_rules]
gr_rules
inspect (gr_rules[1:10])
gr_rules
inspect (gr_rules[1:10])
gr_rules_beer <- apriori(Groceries, parameter = list(supp= .0001, conf = .08), appearance = list(default = "rhs", lhs= "bottled beer")) 
inspect (gr_rules_beer[1:10])
plot(gr_rules, method = "graph", interactive = T)
