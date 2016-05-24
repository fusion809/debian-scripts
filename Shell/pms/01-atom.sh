function apmi {
  apm install "$@"
}

function apmr {
  apm remove "$@"
}

function apmup {
  apm update --no-confirm
}
