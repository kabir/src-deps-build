source ./main-branches.env

rm -rf checkout-dir

# TODO authenticaton?
git clone $TOPIC_REPO_URL checkout-dir


cd checkout-dir
git checkout -b topic-branch $TOPIC_BRANCH_NAME

cp ../srcdeps.yaml .
if [ ! -d ".mvn" ]; then
  mkdir .mvn
fi

# TODO if there is an extensions file already we need to merge stuff
cp ../.mvn/extensions.xml .mvn/extensions.xml

# TODO run build

