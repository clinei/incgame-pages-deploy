# GLOBAL TODO: 
# + add guard conditions
# + enable non-CI usage

source scripts/set_environment.sh

bash $SCRIPTS_DIR/config_git.sh

bash $SCRIPTS_DIR/build.sh

if [ $SHOULD_PUSH ]
then
	bash $SCRIPTS_DIR/push.sh
fi
