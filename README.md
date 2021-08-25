# LineageOS_J5-2015



```
#Sync
mkdir -p ~/android/lineage
cd ~/android/lineage
repo init -u git://github.com/LineageOS/android.git -b lineage-18.1
repo sync
source build/envsetup.sh

# Repos
git clone -b samsung_qcom  https://github.com/daviiid99/LineageOS_J5-2015 device/samsung/qcom-common
git clone -b samsung_vendor  https://github.com/daviiid99/LineageOS_J5-2015 vendor/samsung/msm8916-common
git clone -b samsung_msm8916_common  https://github.com/daviiid99/LineageOS_J5-2015 device/samsung/msm8916-common
git clone -b samsung_kernel_msm8916  https://github.com/daviiid99/LineageOS_J5-2015 kernel/samsung/msm8916
git clone -b samsung_j5nlte  https://github.com/daviiid99/LineageOS_J5-2015 device/samsung/j5nlte
git clone -b samsung_hardware  https://github.com/daviiid99/LineageOS_J5-2015 hardware/samsung
git clone -b sony_boringssl-compat https://github.com/daviiid99/LineageOS_J5-2015 external/sony/boringssl-compat

# Build
brunch j5nlte
```


Imported sources from <a href="https://github.com/Galaxy-MSM8916">Samsung MSM8916 Devices</a>
