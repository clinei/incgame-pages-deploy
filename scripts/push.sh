## TODO: don't push on no changes

printf "Pushing build #${TRAVIS_BUILD_NUMBER} to ${PAGES_URL}\n"
(
	cd $PAGES_DIR
	git add .
	git commit -m "${PUSH_COMMIT_MESSAGE}"
	git push origin-push master
)
