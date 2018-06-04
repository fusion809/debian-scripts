function dbuild {
  cdp octave
  rm *xenial*
  rm *trusty*
  if ! [[ -d octave-4.2.0/debian ]]; then
    mkdir -p octave-4.2.0/debian
  fi
  cp -a octave-debian/* octave-4.2.0/debian
  cd octave-4.2.0
  debuild -S -sa
  cd ..
  debsign -k EB93141B *.changes
  dput -f ppa:brentonhorne/octave *.changes
}
