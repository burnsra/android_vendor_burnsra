# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_crespo4g.mk)

PRODUCT_NAME := gingerbread_crespo4g

# Build Gingerbread theme
PRODUCT_PACKAGES += Gingerbread

## common stuff ##
PRODUCT_PACKAGE_OVERLAYS := vendor/burnsra/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

PRODUCT_COPY_FILES += \
    vendor/burnsra/prebuilt/common/etc/hosts:system/etc/hosts