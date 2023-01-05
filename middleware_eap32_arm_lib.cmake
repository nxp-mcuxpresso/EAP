#Description: EAP lib for ARM; user_visible: False
include_guard(GLOBAL)
message("middleware_eap32_arm_lib component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
)


include(middleware_eap32_header)
