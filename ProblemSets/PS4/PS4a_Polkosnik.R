# Practice JSON exercise part 1

# Question 5.
system('wget -O nfl.json "http://api.fantasy.nfl.com/v1/players/stats?statType=seasonStats&season=2010&week=1&format=json"')

# Printing file to console
system('cat nfl.json')

library("jsonlite")
mydf <- fromJSON('nfl.json')
class(mydf$players)
head(mydf$players)
