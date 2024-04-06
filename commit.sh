
now=`date +%Y%m%d%H%M%S`
git add .
git commit -m "$now: commit by script robot"
git push


git log --format=oneline -n7

