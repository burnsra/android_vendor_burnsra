# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_inc.mk)

PRODUCT_NAME := gingerbread_inc

# Build Gingerbread theme
PRODUCT_PACKAGES += Gingerbread

## common stuff ##
PRODUCT_PACKAGE_OVERLAYS := vendor/burnsra/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

# T-Mobile theme engine
# include vendor/burnsra/products/themes.mk

# Build kernel
PRODUCT_SPECIFIC_DEFINES += TARGET_BUILD_KERNEL=true
PRODUCT_SPECIFIC_DEFINES += TARGET_PREBUILT_KERNEL=
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_DIR=htc-kernel-incrediblec
PRODUCT_SPECIFIC_DEFINES += TARGET_KERNEL_CONFIG=cyanogen_incrediblec_defconfig

PRODUCT_COPY_FILES += \
    vendor/burnsra/prebuilt/common/etc/hosts:system/etc/hosts