#!/bin/bash
echo "Haciendo switch a la rama MASTER"
git switch master

echo "Obteniendo los últimos cambios de la rama MASTER"
git pull origin master

echo "Haciendo merge de la rama DEV a MASTER"
git merge dev

if [ $? -ne 0 ]; then
  echo "Hubo conflictos al hacer el MERGE. Resolverlos y luego continuar."
  exit 1
fi

echo "Haciendo push de los cambios a la rama MASTER"
git push origin master

echo "Volviendo a hacer switch a la rama DEV"
git switch dev

echo "Volviendo a hacer switch a la rama RELEASE-2.0.2"
git switch release-2.0.2

echo "Proceso completado con éxito"