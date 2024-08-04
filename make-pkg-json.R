# create my packages.json for friendly.r-universe.dev
library(glue)

base <- "https://github.com/friendly/"

package <- c("heplots", 
    "candisc", 
    "mvinfluence", 
    "VisCollin",
    "genridge", 
    "matlib", 
    "HistData", 
    "vcdExtra",
    "nestedLogit",
    "ggbiplot"
    "HistData", 
             )
url <- glue("{base}{package}")

df <- data.frame(package, url) |> print()



jsonlite::write_json(df, 'packages.json', pretty = TRUE)
