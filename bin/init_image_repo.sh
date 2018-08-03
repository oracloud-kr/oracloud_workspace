. ./bin/env.sh

if [ -d "$ORACLOUD_HOME/$IMG_REPO_NAME" ]; then
  echo "<<Error>>"
  echo "Existing repository: $ORACLOUD_HOME/$IMG_REPO_NAME"
  echo "$IMG_REPO_NAME is image repositorhy of blog"
  exit 1
fi

cd $ORACLOUD_HOME
git clone $IMAGE_REPO_CLONE_URI $IMG_REPO_NAME
#git clone $MY_ORACLOUD_REPO_CLONE_URI $BLOG_REPO_NAME

#cd $ORACLOUD_HOME/$BLOG_REPO_NAME
#git remote add upstream $ORACLOUD_REPO_CLONE_URI

echo "============================="
echo "Task(initializing-repository) is completed! "
