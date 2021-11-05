# SAMSUNG Galaxy J5 | Build Instructions with Manifest
<br/>

Set up Linux environment
```
wget https://github.com/daviiid99/LineageOS_J5-2015/blob/Manifest/environment.sh 
sh ./environment.sh
```
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
curl https://raw.githubusercontent.com/daviiid99/LineageOS_J5-2015/Manifest_R/j5.xml > .repo/local_manifests/j5.xml
curl https://raw.githubusercontent.com/daviiid99/LineageOS_J5-2015/Manifest_R/gapps.xml > .repo/local_manifests/gapps.xml
```
<br/>

Sync repo:
```
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
source build/envsetup.sh
```
<br/>

OpenGApps configure source
```
sudo apt install git-lfs
git lfs install
repo forall -c git lfs pull
rm ~/android/lineage/vendor/opengapps/build/modules/TrichromeLibrary/Android.mk # This is actually needed for Chrome arm
```
<br/>

Remove synced CAF repos (still unusable with building errors)
```
rm -rf hardware/qcom-caf/msm8916/display && rm -rf hardware/qcom-caf/msm8916/media && rm -rf hardware/qcom-caf/msm8916/audio
git clone -b samsung_qcom-caf_media_R https://github.com/daviiid99/LineageOS_J5-2015 hardware/qcom-caf/msm8916/media
git clone -b samsung_qcom-caf_audio_R https://github.com/daviiid99/LineageOS_J5-2015 hardware/qcom-caf/msm8916/audio
git clone -b samsung_qcom-caf_display_R https://github.com/daviiid99/LineageOS_J5-2015 hardware/qcom-caf/msm8916/display
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
