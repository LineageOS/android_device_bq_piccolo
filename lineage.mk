# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := true

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/bq/piccolo/full_piccolo.mk)

PRODUCT_RELEASE_NAME := Aquaris M5
PRODUCT_NAME := lineage_piccolo

# Set product device & name
PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=Aquaris_M5 PRODUCT_NAME=Aquaris_M5

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="piccolo-user 7.1.2 N2G47H 5.1.0_20180205-1243 release-keys"

BUILD_FINGERPRINT := bq/Aquaris_M5/Aquaris_M5:7.1.2/N2G47H/1517833600:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-bq
