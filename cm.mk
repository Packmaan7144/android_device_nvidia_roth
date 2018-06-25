# Inherit device configuration for roth.
$(call inherit-product, device/nvidia/roth/full_roth.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)



PRODUCT_DEVICE := s8515
PRODUCT_NAME := cm_s8515
