#! /bin/bash
rm -r public/
git add .
git submodule add -f -b master https://github.com/wenyalintw/wenyalintw.github.io.git public
git add .
git commit -m "Update website"
git push origin master
hugo
cd public
git add .
git commit -m "Build website"
git push origin master -f
cd ..
