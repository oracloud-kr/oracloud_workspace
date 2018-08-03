if [ $# -eq 0 ]; then
    echo "<<Error>>"
    echo 'Usage: save_images.sh "message of this commit"'
    exit 1
fi

. $ORACLOUD_HOME/bin/env.sh

if [ ! -d "$ORACLOUD_HOME/$IMG_REPO_NAME" ]; then
  echo "<<Error>>"
  echo "Non-Existing repository: $ORACLOUD_HOME/$IMG_REPO_NAME"
  echo "Initialize repository.: ./bin/init.sh"
  exit 1
fi

export CURRENTDIR=`pwd`

cd $ORACLOUD_HOME/$IMG_REPO_NAME
git add *
git commit -m "$1"
git pull origin master --no-edit
git push origin master

cd $CURRENTDIR

echo "============================="
echo "Task(saving image) is completed! "
