if [ $# -eq 0 ]; then
    echo "<<Error>>"
    echo 'Usage: commit_blog.sh "message of this commit"'
    exit 1
fi

export CURRENTDIR=`pwd`

. $ORACLOUD_HOME/bin/env.sh

if [ ! -d "$ORACLOUD_HOME/$BLOG_REPO_NAME" ]; then
  echo "<<Error>>"
  echo "Non-Existing repository: $ORACLOUD_HOME/$BLOG_REPO_NAME"
  echo "Initialize repository.: ./bin/init.sh"
  exit 1
fi

cd $ORACLOUD_HOME/$BLOG_REPO_NAME
git add *
git commit -m "$1"

cd $CURRENTDIR

echo ""
echo ""
echo "Task(push-blog) is completed! "
echo ""
