function ybuild {
  if [[ -f Recipe ]]; then
    ln -sf ../codeblocks/Recipe .
  fi
  if [[ -f *.yml ]]; then
    ./Recipe ./*.yml
  fi
}
