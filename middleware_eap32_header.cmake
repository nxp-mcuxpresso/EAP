#Description: middleware eap; user_visible: False
include_guard(GLOBAL)
message("middleware_eap32_header component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/EAP_Includes
)


include(middleware_eap)
