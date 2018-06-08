# Release name
PRODUCT_RELEASE_NAME := lettuce

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/dt.img:dt.img \
    $(LOCAL_PATH)/kernel:kernel \
    $(LOCAL_PATH)/recovery.fstab:root/etc/recovery.fstab

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lettuce
PRODUCT_NAME := omni_lettuce
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5010
PRODUCT_MANUFACTURER := YU
BOARD_VENDOR := yu

# Enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=YUPHORIA \
    ro.product.device=YUPHORIA

PRODUCT_GMS_CLIENTID_BASE := android-micromax

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="YUPHORIA-user 5.1.1 LMY49J YOG4PAS8A8 release-keys" \
    PRODUCT_NAME=YUPHORIA \
    TARGET_DEVICE=YUPHORIA

BUILD_FINGERPRINT := YU/YUPHORIA/YUPHORIA:5.1.1/LMY49J/YOG4PAS8A8:user/release-keys
