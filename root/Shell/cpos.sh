function cpos {
    if ! [[ -n $2 ]]; then
         rsync -axHASX /$1/ $1/
    else
         rsync -axHASX $1/ $2/
    fi
}
