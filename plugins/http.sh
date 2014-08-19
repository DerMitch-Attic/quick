quick_http() {
    echo "This is not working yet"
    exit 1

    if [ "$1" = "" ] || [ ! -f "$1" ]; then
        echo "usage: quick http"
        exit 1
    fi

    which docker > /dev/null 2>&1
    if [ $? -gt 0 ]; then
        echo "quick http: Docker not found, using python SimpleHTTPServer"
        cd $1
        python -m SimpleHTTPServer
    else
        echo "quick http: Using nginx in a box for better performance"
        docker run -it -v "$1:/var/www" dermitch/mini-nginx
    fi
}
