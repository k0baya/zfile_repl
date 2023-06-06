export ZFILE_INSTALL_PATH=~/${REPL_SLUG}

rm nohup.out

repo="zfile-dev/zfile"

tag=$(curl -s "https://api.github.com/repos/$repo/releases/latest" | grep -o '"tag_name": ".*"' | sed 's/"tag_name": "//;s/"//')

download_url="https://github.com/$repo/releases/download/$tag/zfile-$tag.war"

wget "$download_url" -O zfile-release.war

unzip -o zfile-release.war && rm -rf zfile-release.war

chmod +x $ZFILE_INSTALL_PATH/bin/*.sh
