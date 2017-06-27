	mkdir -p ~/android
	cd ~/android
	repo init -u https://github.com/OneRomOne-N/android.git -b nuclear-n
	repo sync --force-broken --force-sync --no-clone-bundle --quiet -j1
	git clone https://github.com/LineageOS/android_device_leeco_s2.git -b cm-14.1 device/leeco/s2
	git clone https://github.com/LineageOS/android_kernel_leeco_msm8976.git -b cm-14.1 kernel/leeco/msm8976
	git clone https://github.com/TheMuppets/proprietary_vendor_leeco.git -b cm-14.1 vendor/leeco
	git clone https://github.com/LineageOS/android_hardware_sony_thermanager.git -b cm-14.1 hardware/sony/thermanager
	git clone https://github.com/LineageOS/android_device_qcom_common.git -b cm-14.1 device/qcom/common
