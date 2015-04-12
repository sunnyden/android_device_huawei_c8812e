#
# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit the msm7x27a-common definitions
$(call inherit-product, device/huawei/msm7x27a-common/msm7x27a.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/c8812e/overlay
# Files
PRODUCT_COPY_FILES += \
    device/huawei/c8812e/rootdir/fstab.huawei:root/fstab.huawei \
    device/huawei/c8812e/rootdir/init.device.rc:root/init.device.rc \
    device/huawei/c8812e/rootdir/1191601.img:root/tp/1191601.img
PRODUCT_COPY_FILES += \
    device/huawei/c8812e/configs/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/huawei/c8812e/configs/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/huawei/c8812e/configs/thermald.conf:system/etc/thermald.conf
PRODUCT_COPY_FILES += \
    device/huawei/c8812e/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/huawei/c8812e/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/huawei/c8812e/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/huawei/c8812e/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/huawei/c8812e/keylayout/Generic.kl:system/usr/keylayout/Generic.kl
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.confg.hw_appfsversion=C8812EV5_0_SYSIMG \
    ro.confg.hw_appsbootversion=C8812EV5_0_APPSBOOT \
    ro.confg.hw_appversion=C8812EV5_0_KERNEL
# cdma config
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.is_cdma_phone=true \
    ro.config.sel_df_c_before_tp=true \
    ro.config.notRefreshInPBM=true \
    ro.config.hw_cdma_cdg=false \
    ro.cdma.home.operator.numeric=46003 \
    ro.telephony.default_network=4 \
    ro.config.cdma_subscription=0 \
    ro.cdma.factory=china

PRODUCT_PROPERTY_OVERRIDES += \
    gsm.version.baseband=1040 \
    rild.libpath=/system/lib/libril-qc-1.so \
    ro.telephony.ril.config=qcomdsds,skippinpukcount,signalstrength \
    ro.telephony.ril_class=HuaweiRIL

# FM Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.analogpath.supported=false \
    ro.fm.transmitter=false \
    ro.fm.mulinst.recording.support=false

PRODUCT_PACKAGES += \
   FM2 \
   FMRecord \
   libqcomfm_jni \
   qcom.fmradio

# Music
PRODUCT_PACKAGES += \
   Eleven

















$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, vendor/huawei/c8812e/c8812e-vendor.mk)
