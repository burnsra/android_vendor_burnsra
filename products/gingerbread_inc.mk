# Inherit cyanogenmod configurations
$(call inherit-product, vendor/cyanogen/products/cyanogen_inc.mk)

PRODUCT_NAME := gingerbread_inc

## common stuff ##
PRODUCT_PACKAGE_OVERLAYS := vendor/burnsra/overlay/common
PRODUCT_PACKAGE_OVERLAYS += vendor/cyanogen/overlay/common

PRODUCT_COPY_FILES += \
    vendor/burnsra/prebuilt/common/bin/setdefcols.sh:system/bin/setdefcols.sh \
    vendor/burnsra/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so \
    vendor/burnsra/prebuilt/common/app/LatinIME.apk:system/app/LatinIME.apk

PRODUCT_PACKAGES += ThemeDefaults
