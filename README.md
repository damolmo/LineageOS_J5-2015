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
 
 Add patched repos:
```
cd hardware/qcom-caf/msm8916 && rm -rf media && rm -rf display
git clone -b samsung_qcom-caf_display https://github.com/daviiid99/LineageOS_J5-2015 display
git clone -b samsung_qcom-caf_media https://github.com/daviiid99/LineageOS_J5-2015 media
cd ../../../
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
