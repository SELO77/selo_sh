#!/usr/bin/env sh
export BBTT=123
# export BBB=111

echo "0 - IF"
echo $BBB, $BBTT

if [[ ! $CCC == "" ]]; then
	echo "True"
else
	echo "False"
fi

if [[ -n $BBB && -n $BBTT ]]; then
	echo "BBB is $BBB"
	echo "BBTT is $BBTT"
else
	echo "BBB is $BBB"
	echo "BBTT is $BBTT"
fi

echo "0 - IF DONE"
