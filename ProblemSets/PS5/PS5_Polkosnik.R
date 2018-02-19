# Exercise 1

```{r}
# Calling Package
library("rvest")
```

```{r}
# Calling URL
AAPL <- ("https://finance.yahoo.com/quote/AAPL/history?period1=946706400&period2=1518847200&interval=1d&filter=history&frequency=1d")

# Reading URL as HTML
AAPL2 <- read_html(AAPL)
AAPL2

# Parsing to table format
AAPL3 <- AAPL2%>%html_nodes("table")%>%.[1]%>%html_table(fill=TRUE)
AAPL3

```


# Exercise 2

```{r}
library(coinmarketcapr)
crypto <- get_marketcap_ticker_all(currency= 'USD')
crypto2 <- data.frame(crypto)
crypto2
```

```{r}
library(treemap)

df1 <- na.omit(crypto[,c('id','market_cap_usd')])

df1$market_cap_usd <- as.numeric(df1$market_cap_usd)

df1$formatted_market_cap <- paste0(df1$id,'\n','$',format(df1$market_cap_usd,big.mark = ',',scientific = F, trim = T))

treemap(df1, index = 'formatted_market_cap', vSize = 'market_cap_usd', title = 'Cryptocurrency Market Cap', fontsize.labels=c(12, 8), palette='RdYlGn')

```



