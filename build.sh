#!/bin/bash

if [ "$1" = 'g' ] || [ "$1" = 'generate' ] || [ "$1" = '' ]; then
    cp ./_config.theme.yml ./themes/next/_config.yml && \
    docker run --rm --name hexo-deploy -i \
               -v `pwd`/source:/hexo/source\
               -v `pwd`/themes:/hexo/themes\
               -v `pwd`/public:/hexo/public\
               -v `pwd`/_config.yml:/hexo/_config.yml\
               imux/hexo g
fi

if [ "$1" = 'n' ] || [ "$1" = 'new' ]; then
    docker run --rm --name hexo-deploy -i \
               -v `pwd`/source:/hexo/source\
               imux/hexo n $2
fi
