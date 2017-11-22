#!/bin/bash

VC=`sed -n 's/versionCode\s*\(\d*\)/\1/p' $1`
VC=$((VC+1))
sed -i.bu "s/versionCode.*/versionCode $VC/g" $1
VN=`git describe --tags --exact-match`
sed -i.bu "s/versionName.*/versionName \"$VN\"/g" $1
rm $1.bu

