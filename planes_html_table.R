library(data.table)
library(rvest)

url_2010 <- "http://www.planecrashinfo.com/2010/2010.htm"

page_2010 <- read_html(url_2010)

table_2010 <- page_2010 %>% 
  html_table()

DT_2010 <- as.data.table(table_2010)
names(DT_2010) <- c('date', 'Location/Operator', 'Aircraft Type/Registration', 'Fatalities')
DT_2010 <- DT_2010[-1,]
