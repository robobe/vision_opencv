#!/bin/bash
set -e

./debian_scripts/patch_package_xml.sh
source /opt/ros/humble/setup.bash
bloom-generate rosdebian
./debian_scripts/patch_changelog.sh 
./debian_scripts/patch_compat.sh 
./debian_scripts/patch_rules.sh 
fakeroot debian/rules binary