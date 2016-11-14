if ! `which jekyll > /dev/null 2>&1`; then
  printf "Defining the jekyll command...\n"
  if ! `which bundle exec jekyll > /dev/null 2>&1`; then
    if ! `which bundle > /dev/null 2>&1`; then
      if ! `which gem > /dev/null 2>&1`; then
        sudo apt-get -f install gem
      fi
      sudo gem install bundler
    fi
    pushd $FGI
    bundle install
    bundle update
    popd
  fi
fi

sudo cat > /usr/local/bin/jekyll <<\EOF
#!/bin/bash
pushd $FGI
bundle exec jekyll "$@"
popd $FGI
EOF
sudo chmod +x /usr/local/bin/jekyll
