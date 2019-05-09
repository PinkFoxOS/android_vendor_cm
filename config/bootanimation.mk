TARGET_BOOT_ANIMATION_RES ?= undefined

ifeq ($(TARGET_BOOT_ANIMATION_RES),480)
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/480.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),540)
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/540.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),720)
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/720.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/1080.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440)
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/1440.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),2140)
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/1080-2140-18-9.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),undefined)
     $(warning Target bootanimation res is undefined, using generic bootanimation )
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
else
     $(warning Defined bootanimation res is wrong, using generic bootanimation )
     PRODUCT_COPY_FILES += vendor/cm/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
endif