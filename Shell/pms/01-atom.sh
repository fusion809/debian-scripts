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
