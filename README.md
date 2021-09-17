# SAMSUNG Galaxy J5 | Manifest
<br/>

## Build Instructions with manifest
<br/>

Initialize LineageOS repo:
```
mkdir -p ~/android/lineage
cd ~/android/lineage
repo init -u git://github.com/LineageOS/android.git -b lineage-18.1
```
<br/>

Download latest manifest:
```
mkdir -p .repo/local_manifests
curl https://raw.githubusercontent.com/daviiid99/LineageOS_J5-2015/Manifest/j5.xml > .repo/local_manifests/j5.xml
curl https://raw.githubusercontent.com/daviiid99/LineageOS_J5-2015/Manifest/gapps.xml > .repo/local_manifests/gapps.xml
```
<br/>

Sync repo:
```
repo sync
source build/envsetup.sh
```
<br/>

Apply patches:
```
patch -d frameworks/base -p1 < RPatches/Disable_Wallpaper_Zoom.patch #Fixes Android R Wallpaper Zoom
 ```
 <br/>
 
 Add patched repos:
```
cd hardware/qcom-caf/msm8916 && rm -rf media && rm -rf display && rm -rf build
git clone -b samsung_qcom-caf_display https://github.com/daviiid99/LineageOS_J5-2015 display
git clone -b samsung_qcom-caf_media https://github.com/daviiid99/LineageOS_J5-2015 media
git clone -b lineage_build https://github.com/daviiid99/LineageOS_J5-2015 build
cd ../../../
```
 <br/>

(Optional) LineageOS Updater app shorcut in drawer
```
mkdir -p out/target/product/j5nlte/system/product/priv-app
cd out/target/product/j5nlte/system/product/priv-app
mkdir Up&& cd Up
wget https://github.com/daviiid99/daviiid99/releases/download/honami/Up.apk
cd ../../../../../../../../
```
 <br/>
 
 
 (Optional) Gcam Go app prebuilt apk
```
cd out/target/product/j5nlte/system/product/priv-app
mkdir Gcam&& cd Gcam
wget https://github.com/daviiid99/daviiid99/releases/download/honami/Gcam.apk
cd ../../../../../../../../
```
 <br/>
 
  (Optional) Lawnchair app prebuilt apk
```
cd out/target/product/j5nlte/system/product/priv-app
mkdir lawnchair&& cd lawnchair
wget https://github.com/daviiid99/daviiid99/releases/download/honami/lawnchair.apk
cd ../../../../../../../../
```
 <br/>
 
(Optional) Replace Default Wallpaper
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

cd drawable-xxhdpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../

cd drawable-xxxhdpi
rm default_wallpaper.png
wget https://github.com/daviiid99/daviiid99/releases/download/honami/default_wallpaper.png
cd ../../../../../../../../../../
```

<br/>

(Optional) OpenGApps configure source
```
sudo apt install git-lfs
git lfs install
repo forall -c git lfs pull
```
<br/>

Build:
```
brunch j5nlte #for SM-J500FN
brunch j5lte #for SM-J500F/G/M/NO/Y
brunch j5ltechn #for SM-J5008
brunch j53gxx #for SM-J500H
```

<br/>
