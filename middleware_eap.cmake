#Description: middleware eap; user_visible: True
include_guard(GLOBAL)
message("middleware_eap component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
    ${CMAKE_CURRENT_LIST_DIR}/EAP_Includes
    ${CMAKE_CURRENT_LIST_DIR}/Example_Application/CONFIG_HEADER
)


include(middleware_eap_exapp)
