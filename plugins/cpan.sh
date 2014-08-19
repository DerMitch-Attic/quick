quick_cpan() {
	quick_require docker

	CPANCACHE=${CPANCACHE:-~/.cpancache}
	
	if [ "$CPANMIRROR" = "" ]; then
		echo "Please set CPANMIRROR before creating your own mirror"
		exit 1
	fi

	docker run -it --rm -v "$CPANCACHE":/cpan -e MIRROR="$CPANMIRROR" dermitch/minicpan
}

help_cpan() {
	echo "usage: quick cpan"
	echo
	echo "  Creates or updates a local CPAN mirror."
	echo
	echo "  Environment variables:"
	echo "  - CPANCACHE    Local cache directory (defaults to ~/.cpancache)"
	echo "  - CPANMIRROR   CPAN mirror to use (required)"
}
