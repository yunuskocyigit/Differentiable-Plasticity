#!/bin/bash

# turns python notebooks to code

# check if folder exists
if [[ ! -d ../code ]]; then
	mkdir ../code
fi

# convert all of them
shopt -s nullglob
for nb in *.ipynb; do
	jupyter nbconvert --to script $nb 
done

for py in *.py; do
	if [[ -f ../code/$py ]]; then
		echo "$py already exists in the code directory!"
		echo "Store those changes and try again."
		rm -rf ./$py
	else 
		mv ./$py ../code/$py 
	fi
done

echo "Remember to update the notebooks:"
echo "The code folder is ignored by git."
