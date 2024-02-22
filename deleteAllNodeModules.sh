#!/usr/bin/zsh

cd "$1" || exit "1"

del=$(ls | grep node_modules)
target="node_modules"

if [ "$del" = "$target" ]; then
	echo "Found node_modules inside $PWD"
	rm -rf "$target"
fi

limit=$(ls -l | grep -c ^d)
count=1

if [ $limit -eq 0 ]; then
	echo "No More Directories inside $PWD!"
	exit 1
fi

while [ "$count" -le "$limit" ]
do
    echo "\n"
    local dir=$(ls --group-directories-first | head -n "$count" | tail -n 1)
    deleteAllNodeModules.sh $dir
    count=$((count + 1))
done

