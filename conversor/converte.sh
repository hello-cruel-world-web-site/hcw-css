#!/bin/bash

echo "Conversor de sass:"
echo
find ../codigo/css/ -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.css/' |  sh
find ../codigo/css/ -name '*.scss' | sed 's/.*/sass &:&/' | sed 's/\.scss$/.min.css --style compressed/' |  sh

tar -czvf ../codigo/css/hcw-css.tar.gz ../codigo/css/

