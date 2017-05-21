if $CI ; then
	printf "Setting git commiter info...\n"
	git config --global user.name "travis-ci"
	git config --global user.email "travis@travis-ci.org"
fi

printf "Adding git rights...\n"
(
	cd $PAGES_DIR
	if $SHOULD_RM_REMOTE_ORIGIN_PUSH ; then
		git remote rm origin-push
	fi
	git remote add origin-push $PAGES_URL
)
