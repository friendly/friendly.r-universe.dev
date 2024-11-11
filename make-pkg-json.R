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
    "ggbiplot",
    "HistData",
    "Guerry",
    "WordPools",
    "twoway",
    "gellipsoid"
             )
url <- glue::glue("{base}{package}")

df <- data.frame(package, url) |> print()

# add Lahman
df <- rbind(df,
            c("Lahman", "https://github.com/cdalzell/Lahman"))


jsonlite::write_json(df, 'packages.json', pretty = TRUE)
