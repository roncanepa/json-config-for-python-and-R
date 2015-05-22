#install it first:
#install.packages("jsonlite")
library(jsonlite)

#you might have to change your working directory...
#setwd("./Documents/")

#load our file, config.json from the CWD
config = fromJSON("config.json")

#now things are accessible based on their json structure.

# for instance, config$status_age_column is a character vector of length 1:
class(config$status_age_column)
print(config$status_age_column)

#the table list is a character vector:
class(config$table_list)

# ... which you can loop over...
lapply(config$table_list, function(target_table){
    print(target_table)
})


# config$table_map is a data.frame
class(config$table_map)

# ... with all that that entails (take a look)...
config$table_map
