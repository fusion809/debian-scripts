function jekex {
  cdfgi
  bundle exec jekyll serve
}

function blogup {
  cd $GHUB/fusion809.github.io
  push "$@"
}
