#!/bin/bash

docker run --rm --name hexo-deploy -i \
           -v `pwd`/source:/hexo/source\
           -v `pwd`/themes:/hexo/themes\
           -v `pwd`/public:/hexo/public\
           -v `pwd`/_config.yml:/hexo/_config.yml\
           imux/hexo g

# docker run --rm --name hexo-deploy -it \
#            -p 8080:8080\
#            -v `pwd`/source:/hexo/source\
#            -v `pwd`/themes:/hexo/themes\
#            -v `pwd`/public:/hexo/public\
#            -v `pwd`/_config.yml:/hexo/_config.yml\
#            imux/hexo