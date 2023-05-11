#!/bin/bash
function makedirs() {
echo "1. Creating dirs"
cd ~
mkdir -p BIG/{fashion/{jade,honigman,babybom},baby/{shilav,mybaby}}

echo "2.REname jade to castro"
mv BIG/fashion/jade BIG/fashion/castro

echo "3. move babybom to bayb"
mv BIG/fashion/babybom BIG/baby/

echo "4. create file"
touch BIG/fashion/castro/babybomkids

echo "5. copy file"
cp BIG/fashion/castro/babybomkids BIG/fashion/babybom/

echo "6. destroy BIG"
rm -rvf ~/BIG
}


function backupfile() {
read -p "Enter a file name to backup it: " fName
if ! [[ -f "$fName" ]]
	then
		echo "File doesn't exists!"
	else
		cp $fName $fName.bak
		echo "Your file $fName successfuly backuped"
fi
}

