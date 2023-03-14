#!/bin/bash

set -x

git submodule update

cd echarts-doc/
npm i && npm run build

cd ../echarts-examples/
npm i && npm run build

cd ../echarts-handbook/
npm i && npm run build:localsite

cd ../echarts-theme-builder/
npm i && npm run build

cd ../echarts-website/
npm i && npm run build

cd ../echarts-www/
npm i && npm run build

cd ..
find . -type f -exec sed -i 's/https:\/\/echarts.apache.org//g' {} \;

