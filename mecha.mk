#
# Copyright (C) 2011 The CyanogenMod Project
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
    persist.telephony.support_ipv4=true

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
    device/htc/mecha/system/etc/firmware/bcm4329.hcd:system/etc/firmware/bcm4329.hcd \
    device/htc/mecha/system/etc/firmware/fw_bcm4329.bin:system/etc/firmware/fw_bcm4329.bin \
    device/htc/mecha/system/etc/firmware/fw_bcm4329_apsta.bin:system/etc/firmware/fw_bcm4329_apsta.bin \
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
    device/htc/mecha/system/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    device/htc/mecha/system/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dolby_HP.txt:system/etc/soundimage/Sound_Dolby_HP.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dolby_Spk.txt:system/etc/soundimage/Sound_Dolby_Spk.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    device/htc/mecha/system/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    device/htc/mecha/system/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Recording_BCLK.txt:system/etc/soundimage/Sound_Recording_BCLK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    device/htc/mecha/system/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    device/htc/mecha/system/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    device/htc/mecha/system/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    device/htc/mecha/system/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt

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

# High-density art, but English locale
PRODUCT_LOCALES += en
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    device/htc/mecha/system/etc/vold.fstab:system/etc/vold.fstab

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/htc/mecha/kernel/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Kernel Modules
PRODUCT_COPY_FILES += $(shell \
    find device/htc/mecha/kernel/lib/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

# Kernel Customization
PRODUCT_COPY_FILES += \
    device/htc/mecha/kernel/sbin/speedtweak.sh:root/sbin/speedtweak.sh \
    device/htc/mecha/kernel/sbin/zram:root/sbin/zram \
    device/htc/mecha/kernel/xbin/wget:system/xbin/wget

# init.d Customization
PRODUCT_COPY_FILES += \
    device/htc/mecha/kernel/etc/init.d/01vdd_levels:system/etc/init.d/01vdd_levels

# Verizon Customization
PRODUCT_COPY_FILES += \
    device/htc/mecha/verizon/system/app/appdirectedsmspermission.apk:system/app/appdirectedsmspermission.apk \
    device/htc/mecha/verizon/system/app/VerizonSSOEngine.apk:system/app/VerizonSSOEngine.apk \
    device/htc/mecha/verizon/system/app/vzwapnpermission.apk:system/app/vzwapnpermission.apk \
    device/htc/mecha/verizon/system/app/VzWBAClient.apk:system/app/VzWBAClient.apk \
    device/htc/mecha/verizon/system/app/VZWInstaller.apk:system/app/VZWInstaller.apk \
    device/htc/mecha/verizon/system/app/VzwLBSPerm.apk:system/app/VzwLBSPerm.apk

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# media profiles and capabilities spec
$(call inherit-product, device/htc/mecha/media_a1026.mk)

# stuff common to all HTC phones
$(call inherit-product, device/htc/common/common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_BRAND := HTC
PRODUCT_NAME := htc_mecha
PRODUCT_DEVICE := mecha
PRODUCT_MODEL := ADR6400L
PRODUCT_MANUFACTURER := HTC
