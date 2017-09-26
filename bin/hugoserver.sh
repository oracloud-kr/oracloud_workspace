. $ORACLOUD_HOME/bin/env.sh

cd $ORACLOUD_HOME/$BLOG_REPO_NAME
echo `pwd`

if [ "$OS" == "win" ]; then
  $ORACLOUD_HOME/bin/window/hugo.exe server
fi

if [ "$OS" == "linux" ]; then
  $ORACLOUD_HOME/bin/linux/hugo server
fi

if [ "$OS" == "mac" ]; then
  $ORACLOUD_HOME/bin/mac/hugo server
fi
