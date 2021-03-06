# Enable CPU Log and Raw PECI support
# EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_CPU_LOG=ON"
# EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_RAW_PECI=ON"

# Enable Redfish BMC Journal support
# EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_BMC_JOURNAL=ON"

# Enable DBUS log service
EXTRA_OECMAKE += "-DBMCWEB_ENABLE_REDFISH_DBUS_LOG_ENTRIES=ON"

# Enable TFTP
EXTRA_OECMAKE += "-DBMCWEB_INSECURE_ENABLE_REDFISH_FW_TFTP_UPDATE=ON"

# Increase body limit for BIOS FW
EXTRA_OECMAKE += "-DBMCWEB_HTTP_REQ_BODY_LIMIT_MB=35"

# enable debug
# EXTRA_OECMAKE += "-DBMCWEB_ENABLE_DEBUG=ON"
