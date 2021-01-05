# GitHub Pages
## Pré-requis
<p>Avant de commencer les manipulations, soyez sûr d'avoir un repo crée qui ne contient que votre app react.
n'oubliez pas de 'git add .' 'git commit -m 'upd' 'git push'</p>

## Installation
### 1. Ajouter une homepage

Ouvrez votre fichier package.json présent dans votre app react et ajouté la propriété homepage

Ex. : "homepage":"https://Thomas-Florent.github.io/React_Onepage",

Remplacez l'url ci-dessus avec votre nom d'utilisateur github et le nom de votre repo

### 2. Installer gh-pages

Ensuite, il faut un package gh-pages

Exécutez la commande dans votre app react :
npm i gh-pages@2.0.1

### 3. Deploy script

Il faut maintenant ajouter le script deploy dans notre fichier package.json

"scripts":{
 "predeploy": "npm run build",
 "deploy": "gh-pages -d build",
}

Maintenant, lancer le deploy en exécutant la commande "npm run deploy"
