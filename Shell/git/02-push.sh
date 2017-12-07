# Push changes
function push {
  git add --all                                        # Add all files to git
  git commit -m "$1"                                   # Commit with message = argument 1
  git push origin $(git rev-parse --abbrev-ref HEAD)   # Push to the current branch
}

# Undo last pushed commit
function gitu {
    if ! [[ -n $1 ]]; then
         git reset --hard HEAD~1
    else
         git reset --hard HEAD~$1
    fi
    git push origin $(git rev-parse --abbrev-ref HEAD) -f
}

# Push GitHub pages changes
function pushp {
  git add --all && git commit -m "$1" && git push -u origin master
}

function pushss {
  push "$1" && gitsh && gitsize
}

function pushhp {
  git add --all && git commit -m "$1" && git push origin gh-pages
}
