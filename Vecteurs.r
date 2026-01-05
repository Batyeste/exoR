# 3 - Quelle est l'équivalent de la fonction "c" dans Python pour augmenter/ajouter un élément 
# dans un array (type numpy) éventuellement une liste ?
liste = [1, 2, 3]
liste.append(4)  # ce qui nous donne [1, 2, 3, 4]

# 2 - Créer un vecteur "v" qui comporte une séquence de 1 à 100  ? 
# Rappeler comment créer un tuple ou une liste qui comporte une séquence de 1 à 100 en Python ?
v <- 1:100

# et pour une liste
liste = list(range(1, 101))
# et pour un tuple
tuple_seq = tuple(range(1, 101))

# 3 - Afficher la 1è, la dernière valeur, les cinq 1ères, les 5 dernières valeurs, tout sauf les 5 dernières valeurs, 
# tout sauf les 5 1ères et les 5 dernières valeurs de v ?
v[1] # 1ère valeur
v[length(v)] # Dernière valeur
v[1:5] # 5 premières valeurs
v[(length(v)-4):length(v)] # 5 dernières valeurs
v[1:(length(v)-5)] # Tout sauf les 5 dernières valeurs
v[6:(length(v)-5)] # Tout sauf les 5 premières et les 5 dernières valeurs

# 4 - Extraire la 1è, la 4è et les 3 dernières valeurs de v ? 
v[c(1, 4, (length(v)-2):length(v))]
# Tout sauf la 1è, la 4è et les 3 dernières valeurs de v ? 
v[-c(1, 4, (length(v)-2):length(v))]
# Extraire la 1è et les 3 dernières valeurs mais sans la 4è ?
v[c(1, (length(v)-2):length(v))[-2]]

# 5 - Décomposez le vecteur “v” en 2 vecteurs (v_pair et v_impair) où le 1è contient les valeurs pairs et le 2è les valeurs impairs ?
v_pair <- v[v %% 2 == 0]
v_impair <- v[v %% 2 != 0]

# 6 - Créer le vecteur R : ("R", "R",...,"R", "R"). En d'autres termes, vous répétez "R" 20 fois ?
v_R <- rep("R", 20)

# 7 - Créer ce vecteur ("R", "R", "R", "R", "R", "0", "0.125", "0.25", "0.375", "0.5", "0.625", "0.75", "0.875", "1") ?
v_mixte <- c(rep("R", 5), seq(0, 1, by=0.125))

# 8 - Créer ce vecteur ("Rouge", "Bleu", "Vert", "Rouge", "Bleu", "Vert", "Rouge", "Bleu", "Vert") ?
vect_couleurs <- rep(c("Rouge", "Bleu", "Vert"), each = 3)

# -------------------------------------------------------------------------------

# 1. Créer un vecteur "`v`" qui comporte les valeurs suivante : -1, 2, 4, 2, 0 et un vecteur "`w`" qui comporte : 0, 3, -1, 0, 2 ?
v <- c(-1, 2, 4, 2, 0)
w <- c(0, 3, -1, 0, 2)
# Calculer la somme, la différence, le produit et le rapport de `v` et `w`  ? 
somme <- v + w
difference <- v - w
produit <- v * w
rapport <- v / w
# Calculer `v` + 3, la somme des éléments de `v` et leur produit ?
v_plus_3 <- v + 3
somme_v <- sum(v)
produit_v <- prod(v)

# 2 - Vérifier si les éléments du vecteur v sont plus grands que ceux du vecteur w  ?
v > w

# 3 - On provoque un warning : Calculer log(v) ; log népérien. Taper 0/0 (noter bien le warning) ?
log_v <- log(v)  # Provoque un warning car log() n'est pas défini pour les valeurs <= 0
resultat <- 0 / 0  # Provoque un warning car c'est une

# 4 - Créer un vecteur "z" qui combine les vecteurs v et w ? 
z <- c(v, w)
# Quelle est l'équivalent de cette opération sur Python ?
z = v + w  

# 5 - Un comportement bizarre : Refaire les opérations mathématiques demandées : z + v ; z - v ; z*v ; z/v ?
???

# 6 - Corriger ce dernier comportement avec un if statement ?
???

