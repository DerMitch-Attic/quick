quick_http() {
    DIRECTORY=${1:-$(pwd)}
    PORT=${PORT:-8000}
    if [ ! -d "$DIRECTORY" ]; then
        echo "Invalid directory: $DIRECTORY"
        exit 1
    fi

    echo "quick http: Serving directory $DIRECTORY on port $PORT"

    which docker > /dev/null 2>&1
    if [ $? -gt 0 ]; then
        echo "quick http: Docker not found, using python SimpleHTTPServer"
        OLD_CWD=$(pwd)
        cd $DIRECTORY
        python -m SimpleHTTPServer $PORT
        cd $OLD_CWD
    else
        echo "quick http: Using nginx in a box for better performance"
        docker run -it -p $PORT:80 -v "$DIRECTORY:/var/www" dermitch/mini-nginx
    fi
}

help_http() {
    echo "usage: quick http [DIRECTORY]"
    echo
    echo "  Starts a HTTP server and serves the specfic directory."
    echo "  If docker is available, a nginx container will be used. Otherwise Python's SimpleHTTPServer, which is single-threaded."
    echo
    echo "  Environment variables:"
    echo "  - PORT    Port to use (Default: 8000)"
    echo
}