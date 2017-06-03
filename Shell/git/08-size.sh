# Estimate the size of the current repo
# Taken from http://stackoverflow.com/a/16163608/1876983
function gitsize {
  git gc
  git count-objects -vH
}

# Git shrink
# Taken from http://stackoverflow.com/a/2116892/1876983
function gitsh {
  git reflog expire --all --expire=now
  git gc --prune=now --aggressive
}

