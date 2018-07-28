export IMAGE_TAG=$(cat VERSION)
export AARCH=`uname -m`

docker build -f Dockerfile.synchronizer -t cachengo/progran-synchronizer-$AARCH:$IMAGE_TAG .
docker push cachengo/progran-synchronizer-$AARCH:$IMAGE_TAG
