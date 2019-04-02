#!/bin/bash

echo
echo "Git:"
echo
echo "Adicionando!"
git add .
echo "Commit!"
echo "Digite o texto do commit:"
read mensagem
git commit -m "$mensagem" 
echo "Push!"
git push -u origin master
