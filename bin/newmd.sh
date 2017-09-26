if [ $# -eq 0 ]; then
    echo "<<Error>>"
    echo 'Usage: newmd.sh file_name'
    echo 'Example: newmd.sh test.md'
    exit 1
fi

. $ORACLOUD_HOME/bin/env.sh

if [ ! -d "$ORACLOUD_HOME/$BLOG_REPO_NAME" ]; then
  echo "<<Error>>"
  echo "Non-Existing repository: $ORACLOUD_HOME/$BLOG_REPO_NAME"
  echo "Initialize repository.: ./bin/init.sh"
  exit 1
fi

export CURRENTDIR=`pwd`

cd $ORACLOUD_HOME/$BLOG_REPO_NAME
hugo new post/$1

cd $CURRENTDIR

echo "============================="
echo "Task(push-blog) is completed! "
