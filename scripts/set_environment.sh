## TODO: document

printf "Setting environment variables...\n"

export PAGES_REPO_NAME="incgame-pages"
export PAGES_FORK_NAME="clinei"

export ROOT_DIR=$(pwd)
export REPO_DIR="${ROOT_DIR}/repo"
export SCRIPTS_DIR="${ROOT_DIR}/scripts"
export PAGES_DIR="${ROOT_DIR}/pages"

export PAGES_URL="https://${GH_TOKEN}@github.com/${PAGES_FORK_NAME}/${PAGES_REPO_NAME}"

# TODO: add commandline option to push
if ! $SHOULD_PUSH ; then
	SHOULD_PUSH = $CI
fi
export SHOULD_PUSH

# custom commit message
# PUSH_COMMIT_MESSAGE="initial commit"
if ! [ PUSH_COMMIT_MESSAGE ] ; then
	PUSH_COMMIT_MESSAGE="updated by travis build ${TRAVIS_BUILD_NUMBER}"
fi
export PUSH_COMMIT_MESSAGE

export SHOULD_CLEAN=$(! [ CI ] && [ $CI ])

# FIXME: 
export SHOULD_RM_REMOTE_ORIGIN_PUSH=$([ $(cd $PAGES_DIR && git remote | grep "origin-push") = "origin-push" ])

export REPO_UPDATED=false
