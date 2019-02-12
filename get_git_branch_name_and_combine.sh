echo "* Not set variable: $NOTSETVAR"

if [ ! "$BRANCH_NAME" ]; then
	echo "* Set current branch name ..."
	export BRANCH_NAME="$(git symbolic-ref --short HEAD)"
fi

echo "* BRANCH_NAME: $BRANCH_NAME"
export SERVICE_HOST="$BRANCH_NAME.selo.com"
export ADMIN_HOST="$BRANCH_NAME.selo.com"

echo "* SERVICE_HOST: $SERVICE_HOST"
echo "* ADMIN_HOST: $ADMIN_HOST"

