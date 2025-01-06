#!/bin/bash
echo "Enter the repository address :"
read repo
if [ -z "$repo" ]; then
	echo "Repository cannot be empty"
	echo "Exiting"
	exit 1
fi
echo "Cloning repository.."
git clone "$repo"

