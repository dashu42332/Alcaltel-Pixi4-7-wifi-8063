#!/bin/bash

project=$1
scater=$2

buildprop="out/target/product/${project}/system/build.prop"
scaterTxt="out/target/product/${project}/${scater}"

if [  ! -f $buildprop  ]; then
 echo "$buildprop not exist"
 exit 1
fi

if [  ! -f $scaterTxt  ]; then
 echo "$scaterTxt not exist"
 exit 1
fi

buildnumber=$(awk -F= '/ro.build.display.id/{print $2}' $buildprop)
language=$(awk -F= '/ro.product.locale.language/{print $2}' $buildprop)
oem=$(awk -F= '/ro.product.manufacturer/{print $2}' $buildprop)
operator=$(awk -F= '/ro.operator.optr/{print $2}' $buildprop)
product=$(awk -F= '/ro.custom.product.device/{print $2}' $buildprop)
publishtime=$(date "+%Y%m%d%H%M%S")
versionname=$(awk -F= '/ro.build.display.id/{print $2}' $buildprop)
COMM_REF=$3

echo "[PRO_INFO]" >> $scaterTxt
echo "TYPE=TCL" >> $scaterTxt
echo "OEM=$oem" >> $scaterTxt
echo "Product=$product" >> $scaterTxt
#echo "Language=$language" >> $scaterTxt
#echo "Opreator=$operator" >> $scaterTxt
#echo "Version=$buildnumber" >> $scaterTxt
echo "COMM_REF=$3" >> $scaterTxt

