# SAMSUNG Galaxy J5 (j5nlte)
<br/>

## Build Instructions with manifest

Initialize LineageOS repo:
```
mkdir -p ~/android/lineage
cd ~/android/lineage
repo init -u git://github.com/LineageOS/android.git -b lineage-18.1
```

Download latest manifest:
```
mkdir -p .repo/local_manifests
curl https://raw.githubusercontent.com/daviiid99/LineageOS_J5-2015/Manifest/j5.xml > .repo/local_manifests/j5.xml
curl https://raw.githubusercontent.com/daviiid99/LineageOS_J5-2015/Manifest/gapps.xml > .repo/local_manifests/gapps.xml

```
Sync repo:
```
repo sync
source build/envsetup.sh
```

Apply patches:
```
patch -d frameworks/base -p1 < RPatches/Disable_Wallpaper_Zoom.patch #Fixes Android R Wallpaper Zoom
 
 ```
(Optional) Replace default wallpaper with LineageOS brand logo wallpaper
 ```
cd vendor/lineage/overlay/common/frameworks/base/core/res/res/drawable-hdpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../

cd drawable-nodpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../

cd drawable-sw600dp-nodpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../

cd drawable-sw720dp-nodpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../

cd drawable-xhdpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../

cd drawable-xxhdpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../

cd drawable-xxxhdpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../../../../../../../../../../
```

(Optional) LineageOS Updater app shorcut in drawer
```
cd out/target/product/j5nlte/system/product/priv-app
mkdir Up&& cd Up
wget https://github.com/daviiid99/daviiid99/releases/download/honami/Up.apk
cd ../../../../../../../../
```

Build:
```
brunch j5nlte
```

<br/>
NOTE: If the build process fails with the following error: 
invalid file path 'frameworks/base/core/res/res/values/config.xml.orig'
<br/>Do:

```
rm ~/android/lineage/frameworks/base/core/res/res/values/config.xml.orig
```
