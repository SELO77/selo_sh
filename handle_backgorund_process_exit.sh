echo "* MAIN PROCESS PID: $$"

# python exit1.py & BACKGROUND_PROCESS_PID=$!
# echo "* BACKGROUND_PROCESS_PID: $BACKGROUND_PROCESS_PID"

# echo "* Waiting for background process done ..."
# sleep 5

python exit1.py;

# set -e
if [ $? -eq 0 ]; then
  echo "* Exit with 0"
  # exit 0
else
  echo "* Exit with Non-Zero!!!"
  # exit 1
fi

