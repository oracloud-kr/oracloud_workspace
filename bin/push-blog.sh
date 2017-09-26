. $ORACLOUD_HOME/bin/env.sh

if [ ! -d "$ORACLOUD_HOME/$BLOG_REPO_NAME" ]; then
  echo "<<Error>>"
  echo "Non-Existing repository: $ORACLOUD_HOME/$BLOG_REPO_NAME"
  echo "Initialize repository.: ./bin/init.sh"
  exit 1
fi

export CURRENTDIR=`pwd`

cd $ORACLOUD_HOME/$BLOG_REPO_NAME
git add *
git commit -m "$1"
git pull upstream master --no-edit
git push origin master

cd $CURRENTDIR

echo "============================="
echo "Task(push-blog) is completed! "
