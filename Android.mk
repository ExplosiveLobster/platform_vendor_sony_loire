# Copyright 2014 The Android Open Source Project
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

ifneq ($(filter kugo suzu,$(PRODUCT_DEVICE)),)

LOCAL_PATH := $(call my-dir)

$(shell mkdir -p $(TARGET_OUT_VENDOR)/bin)
$(foreach p,$(wildcard $(LOCAL_PATH)/bin/*),$(shell cp -r $(LOCAL_PATH)/bin/$(notdir $(p)) $(TARGET_OUT_VENDOR)/bin/. > /dev/null))
#$(foreach p,$(wildcard $(LOCAL_PATH)/dsp/*),$(shell cp -r $(LOCAL_PATH)/dsp/$(notdir $(p)) $(TARGET_OUT_VENDOR)/dsp/. > /dev/null))
$(shell mkdir -p $(TARGET_OUT_VENDOR)/firmware)
$(foreach p,$(wildcard $(LOCAL_PATH)/firmware/*),$(shell cp -r $(LOCAL_PATH)/firmware/$(notdir $(p)) $(TARGET_OUT_VENDOR)/firmware/. > /dev/null))
$(shell mkdir -p $(TARGET_OUT_VENDOR)/lib)
$(foreach p,$(wildcard $(LOCAL_PATH)/lib/*),$(shell cp -r $(LOCAL_PATH)/lib/$(notdir $(p)) $(TARGET_OUT_VENDOR)/lib/. > /dev/null))
$(shell mkdir -p $(TARGET_OUT_VENDOR)/lib64)
$(foreach p,$(wildcard $(LOCAL_PATH)/lib64/*),$(shell cp -r $(LOCAL_PATH)/lib64/$(notdir $(p)) $(TARGET_OUT_VENDOR)/lib64/. > /dev/null))
$(shell mkdir -p $(TARGET_OUT_VENDOR)/radio)
$(foreach p,$(wildcard $(LOCAL_PATH)/radio/*),$(shell cp -r $(LOCAL_PATH)/radio/$(notdir $(p)) $(TARGET_OUT_VENDOR)/radio/. > /dev/null))
$(shell mkdir -p $(TARGET_OUT_ODM))
$(shell ln -sf /vendor/bin $(TARGET_OUT_ODM)/bin)
$(shell ln -sf /vendor/firmware $(TARGET_OUT_ODM)/firmware)
$(shell ln -sf /vendor/lib $(TARGET_OUT_ODM)/lib)
$(shell ln -sf /vendor/lib64 $(TARGET_OUT_ODM)/lib64)
$(shell ln -sf /vendor/radio $(TARGET_OUT_ODM)/radio)

endif # PRODUCT_PLATFORM
