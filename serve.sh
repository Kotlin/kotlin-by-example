#!/bin/sh
docker run -v `pwd`:/tmp -p 4000:4000 jekyll/jekyll jekyll serve -s /tmp --host 0.0.0.0 --incremental
