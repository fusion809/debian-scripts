function jekex {
  cdfgi
  bundle exec jekyll serve
}

function blogup {
  cd $GHUBM/fusion809.github.io
  push "$@"
}
