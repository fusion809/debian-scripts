# Install Atom package
function apmi {
  apm install "$@"
}

# Remove Atom package
function apmr {
  apm remove "$@"
}

# search apm packages
function apms {
  apm search "$@"
}

# list installed apm packages
function apml {
  apm list
}

# Update Atom packages
function apmup {
  apm update --no-confirm
}

function atomb {
  script/build && script/grunt mkdeb && sudo dpkg -i out/atom*.deb
}
