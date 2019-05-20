LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := reactnative

LOCAL_SRC_FILES := \
  CxxNativeModule.cpp \
  Instance.cpp \
  JSBigString.cpp \
  JSBundleType.cpp \
  JSCExecutor.cpp \
  JSCLegacyTracing.cpp \
  JSCMemory.cpp \
  JSCNativeModules.cpp \
  JSCPerfStats.cpp \
  JSCSamplingProfiler.cpp \
  JSCTracing.cpp \
  JSCUtils.cpp \
  JSDeltaBundleClient.cpp \
	JSExecutor.cpp \
  JSIndexedRAMBundle.cpp \
  MethodCall.cpp \
  ModuleRegistry.cpp \
  NativeToJsBridge.cpp \
  Platform.cpp \
  RAMBundleRegistry.cpp \
  ReactMarker.cpp \

LOCAL_C_INCLUDES := $(LOCAL_PATH)/..
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_CFLAGS := \
  -DLOG_TAG=\"ReactNative\"

LOCAL_CFLAGS += -fexceptions -frtti

LOCAL_STATIC_LIBRARIES := jschelpers_abi32_0_0
LOCAL_SHARED_LIBRARIES := libfb_abi32_0_0 libfolly_json_abi32_0_0 libjsc libglog_abi32_0_0

include $(BUILD_STATIC_LIBRARY)

$(call import-module,fb)
$(call import-module,folly)
$(call import-module,jsc)
$(call import-module,glog)
$(call import-module,jschelpers)
$(call import-module,jsinspector)
$(call import-module,privatedata)
