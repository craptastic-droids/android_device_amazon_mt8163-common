#
# Copyright (C) 2021 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIBAUDIOSTREAM_JNI := /system/lib64/libaudiostream_jni.so

AUDIO_STREAM_AMAZON_SYMLINK := $(TARGET_COPY_OUT_SYSTEM)/lib64/libaudiostream_jni.AMAZON.so
$(AUDIO_STREAM_AMAZON_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating lib64/libaudiostream_jni.AMAZON.so symlink: $@"
	@mkdir -p $(dir $@)
	$(hide) ln -sf $(LIBAUDIOSTREAM_JNI) $@

ALL_DEFAULT_INSTALLED_MODULES += \
	$(AUDIO_STREAM_AMAZON_SYMLINK)
