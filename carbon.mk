# Release name
PRODUCT_RELEASE_NAME := GN-GSM

# gsm
$(call inherit-product, vendor/carbon/config/common_gsm.mk)

# languages
PRODUCT_LOCALES := en_US fr_FR it_IT es_ES de_DE nl_NL cs_CZ pl_PL ja_JP zh_TW zh_CN ru_RU ko_KR nb_NO nn_NO es_US da_DK el_GR tr_TR pt_PT pt_BR rm_CH sv_SE bg_BG ca_ES en_GB fi_FI hi_IN hr_HR hu_HU in_ID iw_IL ka_GE lt_LT lv_LV ro_RO sk_SK sl_SI sr_RS uk_UA vi_VN tl_PH ar_EG fa_IR th_TH sw_TZ ms_MY af_ZA zu_ZA am_ET hi_IN

# phone
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := maguro
PRODUCT_NAME := carbon_maguro
PRODUCT_BRAND := Google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.maguro.$(shell date +%m%d%y).$(shell date +%H%M%S)

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"
