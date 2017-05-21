## WIP: do not use

ARGS=$(getopt -o "p" -l "push:" -n $0 -- "$@")

if [ $? -ne 0 ] ; then
	exit 1;
fi

SHOULD_PUSH=false

# TODO: better initial value?
opt=
while [ "$opt" != "-1" ] ; do
	opt=$1

	case opt in
		-h|--help)
			# TODO: print usage
			echo Help
			exit
			;;
		-p|--push)
			SHOULD_PUSH=true
			;;
		--) break ;;
	esac
	printf "${opt}"
	# echo $([ "$opt" != "\n" ] )

	# shift
done

printf "$SHOULD_PUSH"
export SHOULD_PUSH
