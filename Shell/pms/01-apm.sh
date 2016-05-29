# Install Atom package
function apmi {
  apm install "$@"
}

# Remove Atom package
function apmr {
  apm remove "$@"
}

# Update Atom packages
function apmup {
  apm update --no-confirm
}

function atomb {
  script/build && script/grunt mkdeb && sudo dpkg -i out/atom*.deb
}
