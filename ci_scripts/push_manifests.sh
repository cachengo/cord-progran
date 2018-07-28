export IMAGE_TAG=$(cat VERSION)

docker manifest create --amend cachengo/progran-synchronizer:$IMAGE_TAG cachengo/progran-synchronizer-x86_64:$IMAGE_TAG cachengo/progran-synchronizer-aarch64:$IMAGE_TAG
docker manifest push cachengo/progran-synchronizer:$IMAGE_TAG
