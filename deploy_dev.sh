#!/bin/bash

echo "Haciendo switch a la rama DEV"
git switch dev

echo "Obteniendo los últimos cambios de la rama DEV"
git pull origin dev

echo "Haciendo merge de la rama RELEASE-2.0.2 a DEV"
git merge release-2.0.2

if [ $? -ne 0 ]; then
  echo "Hubo conflictos al hacer el MERGE. Resolverlos y luego continuar."
  exit 1
fi

echo "Haciendo push de los cambios a la rama DEV"
git push origin dev

echo "Volviendo a hacer switch a la rama RELEASE-2.0.2"
git switch release-2.0.2

echo "Proceso completado con éxito"