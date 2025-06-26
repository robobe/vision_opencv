#/bin/bash

sed -i 's|^\([[:space:]]*\)<depend>libopencv-dev</depend>|\1<!-- <depend>libopencv-dev</depend> -->|' package.xml
sed -i 's|^\([[:space:]]*\)<depend>python3-opencv</depend>|\1<!-- <depend>python3-opencv</depend> -->|' package.xml