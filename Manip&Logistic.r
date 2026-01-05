# 1
install.packages(c("questionr", "jsonlite"))
library(questionr)
library(jsonlite)

setwd("C:/Users/Batyste/Desktop/Cours IPSSI/2025-2026/Janvier_R/exoR") # mettez votre propre chemin

df <- fromJSON("questionr.json")
describe(df)

# 2
# Découpage de la variable age
df$age_group <- icut(df$age, c(16, 25, 45, 65, 99))

df$qualif <- irec(df$qualif)
df$nivetud <- iorder(df$nivetud)

# 3
install.packages("dataMaid")
library(dataMaid)

# Génération du codebook (HTML)
makeCodebook(
  df,
  output = "codebook_df.html"
)

# 4
# 4.1 Indicateurs statistiques
mean(df$heures.tv, na.rm = TRUE)
sd(df$heures.tv, na.rm = TRUE)
min(df$heures.tv, na.rm = TRUE)
max(df$heures.tv, na.rm = TRUE)
range(df$heures.tv, na.rm = TRUE)
median(df$heures.tv, na.rm = TRUE)
quantile(df$heures.tv, na.rm = TRUE)

summary(df$heures.tv)
df$age_rec <- cut(df$age,
  include.lowest = TRUE,
  right = FALSE,
  dig.lab = 4,
  breaks = NULL
)
# 4.2 Représentations graphiques

# ??