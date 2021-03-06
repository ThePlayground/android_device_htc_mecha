#
# Copyright (C) 2011 The Playground Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

## (1) First, the most specific values, i.e. the aspects that are specific to GSM

PRODUCT_COPY_FILES += \
    device/htc/mecha/kernel/init.mecha.rc:root/init.mecha.rc \
    device/htc/mecha/kernel/ueventd.mecha.rc:root/ueventd.mecha.rc 

## (2) Also get non-open-source GSM-specific aspects if available
$(call inherit-product-if-exists, vendor/htc/mecha/mecha-vendor.mk)
$(call inherit-product-if-exists, vendor/twisted/google-facelock.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.oem.ecclist=112,911 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.def.agps.mode=6 \
    htc.audio.alt.enable=1 \
    htc.audio.hac.enable=1 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.yt=android-htc \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.vs=android-verizon \
    ro.com.google.clientidbase.gmm=android-verizon \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.2_r8 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.cdma.home.operator.numeric = 310012 \
    ro.cdma.home.operator.alpha = Verizon \
    ro.telephony.call_ring.multiple=false \
    persist.cne.UseCne=false \
    persist.cne.bat.range.low.med=30 \
    persist.cne.bat.range.med.high=60 \
    persist.cne.loc.policy.op=/system/etc/OperatorPolicy.xml \
    persist.cne.loc.policy.user=/system/etc/UserPolicy.xml \
    persist.cne.bwbased.rat.sel=false \
    persist.cne.snsr.based.rat.mgt=false \
    persist.cne.bat.based.rat.mgt=false \
    persist.cne.be.ge.sqi.min=0 \
    persist.cne.be.ge.sqi.max=100 \
    persist.cne.be.umts.sqi.min=0 \
    persist.cne.be.umts.sqi.max=100 \
    persist.cne.be.hspa.sqi.min=0 \
    persist.cne.be.hspa.sqi.max=100 \
    persist.cne.be.1x.sqi.min=0 \
    persist.cne.be.1x.sqi.max=100 \
    persist.cne.be.do.sqi.min=0 \
    persist.cne.be.do.sqi.max=100 \
    persist.cne.be.wlan.sqi.min=0 \
    persist.cne.be.wlan.sqi.max=100
    persist.telephony.support_ipv6=true \
    persist.telephony.support_ipv4=true \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

DEVICE_PACKAGE_OVERLAYS += device/htc/mecha/overlay

# Devie XML Permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Device XML Properties
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml \
    device/htc/mecha/system/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/htc/mecha/system/etc/gps.conf:system/etc/gps.conf

PRODUCT_PACKAGES += \
    lights.mecha \
    sensors.mecha \
    gps.mecha

# Keylayouts and Touchscreen
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/mecha/system/usr/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
    device/htc/mecha/system/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/htc/mecha/system/usr/keychars/mecha-keypad.kcm.bin:system/usr/keychars/mecha-keypad.kcm.bin \
    device/htc/mecha/system/usr/keychars/mecha-keypad-v0.kcm.bin:system/usr/keychars/mecha-keypad-v0.kcm.bin \
    device/htc/mecha/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mecha/system/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/mecha/system/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/mecha/system/usr/keylayout/mecha-keypad-v0.kl:system/usr/keylayout/mecha-keypad-v0.kl \
    device/htc/mecha/system/usr/keylayout/mecha-keypad.kl:system/usr/keylayout/mecha-keypad.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/mecha/system/etc/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/mecha/system/etc/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \
    device/htc/mecha/system/etc/firmware/mp2_dec_mc.fw:system/etc/firmware/mp2_dec_mc.fw \

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMicXD01.csv:system/etc/AIC3254_REG_DualMicXD01.csv \
    device/htc/mecha/system/etc/AIC3254_REG_DualMicXD02.csv:system/etc/AIC3254_REG_DualMicXD02.csv \
    device/htc/mecha/system/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/mecha/system/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/mecha/system/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/mecha/system/etc/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    device/htc/mecha/system/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/mecha/system/etc/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/mecha/system/etc/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/mecha/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv

PRODUCT_COPY_FILES += $(shell \
    find device/htc/mecha/system/etc/soundimage -name '*.txt' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/etc\/soundimage\/\2/' \
    | tr '\n' ' ')

# OMX Config Profiles
PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/01_pv_omx_wrapper.yac:system/etc/01_pv_omx_wrapper.yac \
    device/htc/mecha/system/etc/mtpdb.yac:system/etc/mtpdb.yac \
    device/htc/mecha/system/etc/pvasflocal.yac:system/etc/pvasflocal.yac \
    device/htc/mecha/system/etc/pvasfstreaming.yac:system/etc/pvasfstreaming.yac \
    device/htc/mecha/system/etc/pvextensions.yac:system/etc/pvextensions.yac \
    device/htc/mecha/system/etc/pvOMXcfg.ini:system/etc/pvOMXcfg.ini \
    device/htc/mecha/system/etc/pvplayer2.yac:system/etc/pvplayer2.yac \
    device/htc/mecha/system/etc/pvwmdrm.yac:system/etc/pvwmdrm.yac \
    device/htc/mecha/system/etc/vomeComp_RTSP.cfg:system/etc/vomeComp_RTSP.cfg \
    device/htc/mecha/system/etc/vomeComp.cfg:system/etc/vomeComp.cfg \
    device/htc/mecha/system/etc/vomeCore.cfg:system/etc/vomeCore.cfg \
    device/htc/mecha/system/etc/vomeplay.cfg:system/etc/vomeplay.cfg \
    device/htc/mecha/system/etc/vommcodec.cfg:system/etc/vommcodec.cfg \
    device/htc/mecha/system/etc/voPDLog.cfg:system/etc/voPDLog.cfg \
    device/htc/mecha/system/etc/voVidDec.dat:system/etc/voVidDec.dat

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/vold.fstab:system/etc/vold.fstab

# Kernel Customization
PRODUCT_COPY_FILES += \
    device/htc/mecha/kernel/sbin/zram:root/sbin/zram \
    device/htc/mecha/kernel/xbin/wget:system/xbin/wget

# init.d Customization
PRODUCT_COPY_FILES += \
    device/htc/mecha/kernel/etc/init.d/01vdd_levels:system/etc/init.d/01vdd_levels \

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/mecha/media_a1026.mk)

# htc audio settings
$(call inherit-product, device/htc/mecha/media_htcaudio.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BRAND := verizon_wwe
PRODUCT_NAME := htc_mecha
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := ThunderBolt
PRODUCT_MANUFACTURER := HTC
PRODUCT_PROPERTY_OVERRIDES += ro.modversion=playground.ics.$(shell date +%m%d%y).$(shell date +%H%M%S)

# overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_ID=IML74K \
    BUILD_NUMBER=370649.2 \
    PRODUCT_NAME=htc_mecha \
    TARGET_BUILD_TYPE=user \
    BUILD_VERSION_TAGS=release-keys \
    PRIVATE_BUILD_DESC="7.00.605.2 CL370649 release-keys" \
    BUILD_FINGERPRINT=verizon_wwe/htc_mecha/mecha:4.0.3/IML74K/370649.2:user/release-keys
