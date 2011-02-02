# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_inc.mk)

PRODUCT_NAME := gingerbread_inc

# Include the FM Radio
PRODUCT_PACKAGES += FM
# Include the Flashlight/Torch
PRODUCT_PACKAGES += Torch
# Build Gingerbread theme
PRODUCT_PACKAGES += Gingerbread

## common stuff ##
PRODUCT_PACKAGE_OVERLAYS := vendor/burnsra/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

# T-Mobile theme engine
# include vendor/burnsra/products/themes.mk

# Set ro.modversion
#PRODUCT_PROPERTY_OVERRIDES += \
#        ro.modversion=CyanogenMod-7-$(shell date +%Y%m%d%H%M)-Burns5-Inc

PRODUCT_COPY_FILES += \
    vendor/burnsra/prebuilt/common/etc/hosts:system/etc/hosts