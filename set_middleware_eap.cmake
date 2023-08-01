include_guard(GLOBAL)


if (CONFIG_USE_middleware_eap_template)
# Add set(CONFIG_USE_middleware_eap_template true) in config.cmake to use this component

message("middleware_eap_template component is included from ${CMAKE_CURRENT_LIST_FILE}.")

target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./Example_Application/CONFIG_HEADER
  ${CMAKE_CURRENT_LIST_DIR}/./EAP_Includes
)


endif()


if (CONFIG_USE_middleware_eap_exapp)
# Add set(CONFIG_USE_middleware_eap_exapp true) in config.cmake to use this component

message("middleware_eap_exapp component is included from ${CMAKE_CURRENT_LIST_FILE}.")


endif()


if (CONFIG_USE_middleware_eap)
# Add set(CONFIG_USE_middleware_eap true) in config.cmake to use this component

message("middleware_eap component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_eap_exapp)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux OR CONFIG_TOOLCHAIN STREQUAL xcc))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./Example_Application/CONFIG_HEADER
  ${CMAKE_CURRENT_LIST_DIR}/./EAP_Includes
)
endif()

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  if(CONFIG_TOOLCHAIN STREQUAL armgcc)
    target_compile_options(${MCUX_SDK_PROJECT_NAME} PUBLIC
    )
  endif()
  if(CONFIG_TOOLCHAIN STREQUAL mcux)
    target_compile_options(${MCUX_SDK_PROJECT_NAME} PUBLIC
    )
  endif()

endif()

else()

message(SEND_ERROR "middleware_eap dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_eap16_header)
# Add set(CONFIG_USE_middleware_eap16_header true) in config.cmake to use this component

message("middleware_eap16_header component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_eap)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux OR CONFIG_TOOLCHAIN STREQUAL xcc))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./EAP_Includes
)
endif()

if(CONFIG_USE_COMPONENT_CONFIGURATION)
  message("===>Import configuration from ${CMAKE_CURRENT_LIST_FILE}")

  if(CONFIG_TOOLCHAIN STREQUAL armgcc)
    target_compile_options(${MCUX_SDK_PROJECT_NAME} PUBLIC
    )
  endif()
  if(CONFIG_TOOLCHAIN STREQUAL mcux)
    target_compile_options(${MCUX_SDK_PROJECT_NAME} PUBLIC
    )
  endif()

endif()

else()

message(SEND_ERROR "middleware_eap16_header dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_eap32_header)
# Add set(CONFIG_USE_middleware_eap32_header true) in config.cmake to use this component

message("middleware_eap32_header component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if(CONFIG_USE_middleware_eap)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux OR CONFIG_TOOLCHAIN STREQUAL xcc))
target_include_directories(${MCUX_SDK_PROJECT_NAME} PUBLIC
  ${CMAKE_CURRENT_LIST_DIR}/./EAP_Includes
)
endif()

else()

message(SEND_ERROR "middleware_eap32_header dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_eap_fusionf1_lib)
# Add set(CONFIG_USE_middleware_eap_fusionf1_lib true) in config.cmake to use this component

message("middleware_eap_fusionf1_lib component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt595) AND CONFIG_USE_middleware_eap16_header)

if(CONFIG_TOOLCHAIN STREQUAL xcc)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./EAP_Library/libEAP16_3_0_13_FP1_RT500.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_eap_fusionf1_lib dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_eap_hifi4_lib)
# Add set(CONFIG_USE_middleware_eap_hifi4_lib true) in config.cmake to use this component

message("middleware_eap_hifi4_lib component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt685 OR CONFIG_BOARD STREQUAL mimxrt685audevk) AND CONFIG_USE_middleware_eap16_header)

if(CONFIG_TOOLCHAIN STREQUAL xcc)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./EAP_Library/libEAP16_3_0_13_FP1_RT600.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_eap_hifi4_lib dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_eap32_hifi4_lib)
# Add set(CONFIG_USE_middleware_eap32_hifi4_lib true) in config.cmake to use this component

message("middleware_eap32_hifi4_lib component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL mimxrt685audevk) AND CONFIG_USE_middleware_eap32_header)

if(CONFIG_TOOLCHAIN STREQUAL xcc)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./EAP_Library/libEAP32_1_0_4_FP1_RT600.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_eap32_hifi4_lib dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_eap_arm_lib)
# Add set(CONFIG_USE_middleware_eap_arm_lib true) in config.cmake to use this component

message("middleware_eap_arm_lib component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkmimxrt1040 OR CONFIG_BOARD STREQUAL evkbimxrt1050 OR CONFIG_BOARD STREQUAL evkmimxrt1060 OR CONFIG_BOARD STREQUAL evkbmimxrt1060 OR CONFIG_BOARD STREQUAL evkmimxrt1064 OR CONFIG_BOARD STREQUAL lpcxpresso55s69 OR CONFIG_BOARD STREQUAL evkmimxrt1160 OR CONFIG_BOARD STREQUAL evkmimxrt1170 OR CONFIG_BOARD STREQUAL evkbmimxrt1170) AND CONFIG_USE_middleware_eap16_header)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND CONFIG_CORE STREQUAL cm7f)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./EAP_Library/libEAP16_3_0_12_FP1_CM7.a
      -Wl,--end-group
  )
endif()

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND CONFIG_CORE STREQUAL cm33)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./EAP_Library/libEAP16_3_0_12_FP2_CM33.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_eap_arm_lib dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()


if (CONFIG_USE_middleware_eap32_arm_lib)
# Add set(CONFIG_USE_middleware_eap32_arm_lib true) in config.cmake to use this component

message("middleware_eap32_arm_lib component is included from ${CMAKE_CURRENT_LIST_FILE}.")

if((CONFIG_BOARD STREQUAL evkbmimxrt1060) AND CONFIG_USE_middleware_eap32_header)

if((CONFIG_TOOLCHAIN STREQUAL armgcc OR CONFIG_TOOLCHAIN STREQUAL mcux) AND CONFIG_CORE STREQUAL cm7f)
  target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE
    -Wl,--start-group
      ${CMAKE_CURRENT_LIST_DIR}/./EAP_Library/libEAP32_1_0_2_FP1_CM7.a
      -Wl,--end-group
  )
endif()

else()

message(SEND_ERROR "middleware_eap32_arm_lib dependency does not meet, please check ${CMAKE_CURRENT_LIST_FILE}.")

endif()

endif()

