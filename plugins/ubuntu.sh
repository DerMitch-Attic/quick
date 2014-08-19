quick_ubuntu() {
	quick_require docker

	IMAGE=${1:-"ubuntu:14.04"}
	docker run -it $IMAGE /bin/bash
}

help_ubuntu() {
	echo "quick ubuntu [image]"
	echo "Opens a shell inside a docker container (default: ubuntu 14.04)"
}