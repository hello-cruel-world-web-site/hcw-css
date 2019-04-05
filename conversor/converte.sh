#!/bin/bash

echo "Conversor de sass:"

find scss -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.css/' | sed 's/:scss\//:css\//' | sh
find scss -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.min.css --syle compressed/' | sed 's/:scss\//:css\//' | sh

find codigo/scss -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.css/' | sed 's/:codigo\/scss\//:codigo\/css\//' | sh
find codigo/scss -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.min.css --syle compressed/' | sed 's/:codigo\/scss\//:codigo\/css\//' | sh

find ../codigo/scss -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.css/' | sed 's/:\.\.\/codigo\/scss\//:\.\.\/codigo\/css\//' | sh
find ../codigo/scss -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.min.css --syle compressed/' | sed 's/:\.\.\/codigo\/scss\//:\.\.\/codigo\/css\//' | sh

rm css/hcw-css.tar.gz
rm codigo/css/hcw-css.tar.gz
rm ../codigo/css/hcw-css.tar.gz


tar -czvf css/hcw-css.tar.gz css/
tar -czvf codigo/css/hcw-css.tar.gz codigo/css/
tar -czvf ../codigo/css/hcw-css.tar.gz ../codigo/css/

