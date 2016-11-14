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

cat > /tmp/jekyll <<\EOF
#!/bin/bash
pushd $FGI
bundle exec jekyll "$@"
popd $FGI
EOF
sudo mv /tmp/jekyll /usr/local/bin/jekyll 
sudo chmod +x /usr/local/bin/jekyll
