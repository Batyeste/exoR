install.packages("questionr")
library(questionr)
library(jsonlite)

df <- fromJSON("C:/Users/Batyste/Desktop/Cours IPSSI/2025-2026/Janvier_R/exoR/questionr.json")

describe(df)

df$age_group <- icut(df$age, c(16, 25, 45, 65, 99))

df$qualif  <- irec(df$qualif)
df$nivetud <- iorder(df$nivetud)
