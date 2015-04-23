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

# Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/c8812e/full_c8812e.mk)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME := u8833 \
    PRODUCT_DEVICE := u8833 \
    BUILD_FINGERPRINT="Huawei/C8812E/hwc8812e:4.1.1/Huaweic8812e/C00B209:user/ota-rel-keys,release-keys" \
    PRIVATE_BUILD_DESC="c8812e-user 4.1.1 GRJ90 C00B209 release-keys"

# Correct boot animation size for the screen
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_c8812e
PRODUCT_GMS_CLIENTID_BASE := android-huawei

# CM packages
#PRODUCT_PACKAGES += \
#    Torch
