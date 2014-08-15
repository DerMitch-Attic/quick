quick_http() {
    echo "This is not working yet"
    exit 1

    if [ "$1" = "" ] || [ ! -f "$1" ]; then
        echo "usage: quick http [directory]"
        exit 1
    fi
    docker run -it -v "$1:/var/www" dermitch/mini-nginx
}
