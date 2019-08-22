#!/bin/bash

docker run --name hexo-deploy -d \

-v `pwd`:/hexo\


imux/hexo d