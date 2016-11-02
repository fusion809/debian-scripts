function ybuild {
  if [[ -f Recipe ]]; then
    ln -sf ../codeblocks/Recipe .
  fi
  ./Recipe ./*.yml
}
