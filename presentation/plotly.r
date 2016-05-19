require(WDI)
require(ggplot2)
le = WDI(country=c('IN','CN','SE','US','GB'),indicator=c("SP.DYN.LE00.FE.IN","SP.DYN.LE00.IN","SP.DYN.LE00.MA.IN"),start=1990,end=2013)
names(le)[4]="life_exp_female"
names(le)[5]="life_exp_total"
names(le)[6]="life_exp_male"
gg <- ggplot(le,aes(x=year))+geom_line(aes(y=life_exp_female,color="Female Life Expectancy")) + scale_colour_discrete(name ="Variables")+facet_wrap(~ country)
require(plotly)
p <- ggplotly(gg)
htmlwidgets::saveWidget(as.widget(p), "wp.html")


