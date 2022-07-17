#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist


git init
git checkout -b main
git add -A
git commit -m 'deploy'

# deploying to https://prabal-007.github.io/cryptoPe
git push -f git@github.com/prabal-007/cryptoPe.git main:gh-pages

cd -
