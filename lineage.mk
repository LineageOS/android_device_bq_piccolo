# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/piccolo/full_piccolo.mk)

PRODUCT_RELEASE_NAME := Aquaris M5
PRODUCT_NAME := lineage_piccolo

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=Aquaris_M5 PRODUCT_NAME=Aquaris_M5

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=bq/Aquaris_M5/Aquaris_M5:6.0.1/MMB29M/1479371716:user/release-keys \
    PRIVATE_BUILD_DESC="piccolo-user 6.0.1 MMB29M 4.0.0.11_20161117-0935 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-bq
