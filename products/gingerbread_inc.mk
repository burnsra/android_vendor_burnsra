# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_inc.mk)

PRODUCT_NAME := gingerbread_inc

# Include the FM Radio
PRODUCT_PACKAGES += FM
# Include the Flashlight/Torch
PRODUCT_PACKAGES += Torch

## common stuff ##
PRODUCT_PACKAGE_OVERLAYS := vendor/burnsra/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common


PRODUCT_COPY_FILES += \
    vendor/burnsra/prebuilt/common/etc/hosts:etc/hosts