quick_cpan() {
	CPANCACHE=${CPANCACHE:-~/.cpancache}
	
	if [ "$CPANMIRROR" = "" ]; then
		echo "Please set CPANMIRROR before creating your own mirror"
		exit 1
	fi

	docker run -it --rm -v "$CPANCACHE":/cpan -e MIRROR="$CPANMIRROR" dermitch/minicpan
}

help_cpan() {
	echo "usage: quick cpan"
	echo "You can configure the command using the following environment variables:"
	echo
	echo "- CPANCACHE    Local cache directory (defaults to ~/.cpancache)"
	echo "- CPANMIRROR   CPAN mirror to use (required)"
}
