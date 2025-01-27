# Als build sonic-platform-common into python3 wheel, so we can use PSU code in SNMP docker
SONIC_PLATFORM_COMMON_PY3 = sonic_platform_common-1.0-py3-none-any.whl
$(SONIC_PLATFORM_COMMON_PY3)_SRC_PATH = $(SRC_PATH)/sonic-platform-common
$(SONIC_PLATFORM_COMMON_PY3)_PYTHON_VERSION = 3
$(SONIC_PLATFORM_COMMON_PY3)_DEPENDS += $(SONIC_PY_COMMON_PY3) $(SONIC_CONFIG_ENGINE_PY3)
$(SONIC_PLATFORM_COMMON_PY3)_DEBS_DEPENDS += $(PYTHON3_SWSSCOMMON)
# Synthetic dependency just to avoid race condition
SONIC_PYTHON_WHEELS += $(SONIC_PLATFORM_COMMON_PY3)
