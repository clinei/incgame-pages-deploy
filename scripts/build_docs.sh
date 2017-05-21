bash $SCRIPTS_DIR/update_repo.sh

# TODO: refactor
if $SHOULD_CLEAN ; then
	printf "Cleaning docs...\n"
	rm -rf $PAGES_DIR/docs
fi

printf "Building docs...\n"
(
	cd $REPO_DIR &&
	npm install &&
	npm run docs
)

printf "Copying docs...\n"
cp -r $REPO_DIR/docs $PAGES_DIR/docs
