#!/bin/sh
home=$(pwd)
rm -rf tmp
echo "build jar file using maven"
mvn clean install
echo "FAT jar built successfully"
mkdir tmp
cp target/magento-automation-$1-tests.jar tmp/magento-automation-$1-tests.jar
echo "Creating zip artifact for magento automation Test" 
cd tmp
zip -r automation_Java.zip .
mv automation_Java.zip $home
cd ..
rm -rf tmp
echo "Zip artifact for magento automation Test is created." 
