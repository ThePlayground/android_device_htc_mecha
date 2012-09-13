# device
$(call inherit-product-if-exists, vendor/htc/mecha/mecha-vendor.mk)

# bluetooth
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# locales
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# prebuilts
PRODUCT_COPY_FILES += \
    device/htc/mecha/kernel/init.mecha.rc:root/init.mecha.rc \
    device/htc/mecha/system/etc/vold.fstab:system/etc/vold.fstab \
    device/htc/mecha/kernel/ueventd.mecha.rc:root/ueventd.mecha.rc \
    device/htc/mecha/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/mecha/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml

# overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.oem.ecclist=112,911 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.def.agps.mode=6 \
    htc.audio.alt.enable=0 \
    htc.audio.hac.enable=1 \
    media.a1026.enableA1026=0 \
    media.a1026.nsForVoiceRec=0 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.yt=android-htc \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.vs=android-verizon \
    ro.com.google.clientidbase.gmm=android-verizon \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.delay=500 \
    ro.cdma.home.operator.alpha=Verizon \
    ro.cdma.home.operator.numeric=310004 \
    ro.telephony.call_ring.multiple=false \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# overlay
DEVICE_PACKAGE_OVERLAYS += device/htc/mecha/overlay

# packages
PRODUCT_PACKAGES += \
    lights.mecha \
    sensors.mecha \
    gps.mecha

# media
PRODUCT_COPY_FILES += \
    vendor/liquid/prebuilt/common/media/hdpi/bootanimation.zip:system/media/bootanimation.zip

# amtel
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

# keychars
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/mecha/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/mecha/system/usr/keychars/mecha-keypad.kcm.bin:system/usr/keychars/mecha-keypad.kcm.bin \
    device/htc/mecha/system/usr/keychars/mecha-keypad-v0.kcm.bin:system/usr/keychars/mecha-keypad-v0.kcm.bin

# keylayouts
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mecha/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/mecha/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/mecha/system/usr/keylayout/mecha-keypad.kl:system/usr/keylayout/mecha-keypad.kl \
    device/htc/mecha/system/usr/keylayout/mecha-keypad-v0.kl:system/usr/keylayout/mecha-keypad-v0.kl

# firmware
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/mecha/system/etc/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/mecha/system/etc/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    device/htc/mecha/system/vendor/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/mecha/system/vendor/firmware/fw_bcm4329.bin:system/vendor/firmware/fw_bcm4329.bin \
    device/htc/mecha/system/vendor/firmware/fw_bcm4329_apsta.bin:system/vendor/firmware/fw_bcm4329_apsta.bin

# profiles
PRODUCT_COPY_FILES += $(shell \
    find device/htc/mecha/system/etc/soundimage -name '*.txt' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/etc\/soundimage\/\2/' \
    | tr '\n' ' ')

# sound
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMicXD01.csv:system/etc/AIC3254_REG_DualMicXD01.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMicXD02.csv:system/etc/AIC3254_REG_DualMicXD02.csv \
    device/htc/mecha/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/mecha/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/mecha/system/etc/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    device/htc/mecha/system/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/mecha/system/etc/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/mecha/system/etc/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/mecha/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv

# base
$(call inherit-product, build/target/product/full_base.mk)

# common
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# vendor
$(call inherit-product, vendor/liquid/config/common_phone.mk)

# products
PRODUCT_NAME := liquid_mecha
PRODUCT_BRAND := verizon_wwe
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := ThunderBolt
PRODUCT_MANUFACTURER := HTC
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=liquid.mecha.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IML74K \
    BUILD_NUMBER=370649.2 \
    PRODUCT_NAME=htc_mecha \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="7.00.605.2 CL370649 release-keys" \
    BUILD_FINGERPRINT=verizon_wwe/htc_mecha/mecha:4.0.3/IML74K/370649.2:user/release-keys

