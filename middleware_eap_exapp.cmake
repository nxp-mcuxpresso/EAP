#Description: EAP example app; user_visible: False
include_guard(GLOBAL)
message("middleware_eap_exapp component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
)


