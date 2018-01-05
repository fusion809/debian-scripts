# Install Atom package
function apmi {
  apm install "$@" --no-confirm
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
    if `which apm > /dev/null 2>&1`; then
         apm update --no-confirm
    fi
}
