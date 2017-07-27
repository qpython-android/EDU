#!/bin/bash
rm -fr ../docs
make html

#mv static static
#mv sources sources

cd build/html && find . -name "*.html" -exec python ../../add-analytics.py {} \; && python ../../replace.py && find . -name "*-e" -exec rm {} \;&& mv _static static && [ -d _images ] &&  mv _images  images

cd ../.. && mv build/html  ../docs && cp CNAME ../docs  && cp -r quick-start ../docs && cp favicon.ico  ../docs && cp index.html ../docs
