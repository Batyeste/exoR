title <- "Ma première liste en R"
id_client <- c("Id1", "Id2", "Id3", "Id4", "Id5")
product <- c( "aa", "bb", "cc", "dd", "ee" )
price <- c(101, 102, 103, 104, 105)
paiement_status <- c(TRUE, FALSE, TRUE, FALSE, TRUE)
l <- list(title, id_client, product, price, paiement_status)

# 1 - Afficher le statut des paiements (indice : accès au dernier item d’une liste) ?
l[[length(l)]]

# 2 - Afficher les id_client (i.e Accès à un item particulier de la liste) ?
l[[2]]

# 3 - Afficher les id_client et leur statut des paiement (i.e Accès à un range non ordonné de la liste) ? 
l[c(2, 5)]

# 4 - Afficher les produits, leur prix et le statut des paiements  (i.e Accès à un range ordonné de la liste) ?
l[3:5]

# 5 - Afficher tous sauf les id_client (i.e Accès en appliquant une privation sur un item) ?
l[-2]

# 6 - Afficher tous sauf le title et les id_client (i.e Accès à tout avec une privation sur plusieurs items) ?
l[-c(1, 2)]