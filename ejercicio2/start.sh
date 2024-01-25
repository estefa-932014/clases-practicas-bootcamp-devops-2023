#!/bin/bash
LRED='\033[1;31m'
LGREEN='\033[1;32m'
NC='\033[0m'
LBLUE='\033[0;34m'
LYELLOW='\033[1;33m'
repo="bootcamp-devops-2023"
project="app-295devops-travel"
branch="clase2-linux-bash"

if [ -d "$repo" ] ; then
    echo "Existe repo"
    cd $repo
    git pull origin $branch
    git checkout $branch
    #llamado a la función de copia de archivos estaticos
    echo -e "\n${LBLUE} Archivos estaticos copiados.${NC}"
else
    echo -e "\n${LYELLOW} Se clonará el repositorio.${NC}"
    git clone https://github.com/roxsross/$repo.git
    cd $repo/
    git checkout $branch
fi