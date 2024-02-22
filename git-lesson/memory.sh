#  ------------------ -#
  #  GIT LESSON
# -------------------- #

#  ------------------ -#
 # CCONFIG
# -------------------- #

# Affiche la version de git installé sur le système (plusieurs possibilités)

git version | git -v


#Configure le nom d'utilisateur et son email (obligatoire).
git config --global user.email "sriranganathansubarnan@gmail.com"
git config --global user.name "Sriranganathan Subarnan"


# Configurer Git pour qu'il colore la sortie de la console.
git config --global color.ui true

# Ouvrir le fichier de configuration global de Git.
git config --global --edit

# Configure l'editeur de texte par defaut utilisé par Git
git config --global core.edit "code --wait"


#  ------------------ -#
 #  initialisation de projet
# -------------------- #

#Crée un nouveau dépôt GIT
git init

# Affiche l'état de suivi des fichiers
git status


#  ------------------ -#
 #  COMMIT
# -------------------- #

# Ajoute un ou des fichier(s) modifiés à la staging  area pour préparer un commit
git add <nom_fichier> | git add .

# Enregistre les modifications presentes dans la staging area en creant un nvx commit avc le message spécifié.
git commit -m "first commit"

#Modifie le dernier commit
git commit --amend -m "modification du h1 et du h2"


#Affiche l'historique des commits.
git log
git log --oneline

# Permet de se deplacer vers un commit spécifique en utilisant son identifiant
git checkout id_commit

#Permet de revenir au dernier commit
git checkout nom_branche

#  ------------------ -#
 # BRANCHES
# -------------------- #
# Affiche la liste des branches
git branch
# Créé une nouvelle branche
git branch nom_branch
# Change de branche 
git switch nom_branch
# Fusionne les modifications de la branch spécifié sur la branche actuelle
git merge nom_branch

# Renomme la branch actuelle avec le nouveau nom
git branch -m "nom_branche"

# Supprime la branch spécifié
git branch -d nom_de_la_branche

#------------------------------------------------#
#                    RESTORES                    #
#------------------------------------------------#

# Restaure le fichier à l'état du dernier commit
git restore nom_fichier

# Supprime le fichier spécifié de la staging area, le retirant de la préparation pour le commit.
git restore --staged .\ nom_fichier

#Crée un nouveau commit à partir du commit spécifié
git revert id_commit

#------------------------------------------------#
#                    REMOTE                  #
#------------------------------------------------#

# Etablir une connexion avec un depot distant en lui attribuant un nom et une url
git remote add alis url

#Envoie le contenu du depot local vers le depot distant
# En lisant la branche locale avec la branche distante
git push -u alias nom_branche

# Envoie le contenu du depot local vers le depot distant
git push
#recupere tout lhistorique du depot distant et incorpore les modifications
git pull