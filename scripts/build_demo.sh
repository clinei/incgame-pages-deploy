bash $SCRIPTS_DIR/update_repo.sh

# TODO: refactor
if $SHOULD_CLEAN ; then
	printf "Cleaning demo...\n"
	rm -rf $PAGES_DIR/demo
fi

printf "Copying demo...\n"
cp -rf $REPO_DIR/src $PAGES_DIR/demo
