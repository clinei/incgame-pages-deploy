if ! $REPO_UPDATED ; then
	printf "Updating repo...\n"
	(
		cd $ROOT_DIR
		git submodule update --recursive repo
	)
fi
