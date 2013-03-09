# Release name
PRODUCT_RELEASE_NAME := GN-GSM

# gsm
$(call inherit-product, vendor/carbon/config/common_gsm.mk)

# languages
PRODUCT_LOCALES := cs_CZ da_DK de_AT de_CH de_DE de_LI el_GR en_AU en_CA en_GB en_NZ en_SG en_US es_ES fr_CA fr_CH fr_BE fr_FR it_CH it_IT ja_JP ka_GE ko_KR nb_NO nl_BE nl_NL nn_NO pl_PL pt_PT ru_RU sv_SE tr_TR zh_CN zh_HK zh_TW am_ET hi_IN

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
