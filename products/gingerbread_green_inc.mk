# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_inc.mk)

PRODUCT_NAME := gingerbread_green_inc

## common stuff ##
PRODUCT_PACKAGE_OVERLAYS := vendor/burnsra/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

##PRODUCT_COPY_FILES += \
##    vendor/burnsra/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh

##PRODUCT_PACKAGES += ThemeDefaults