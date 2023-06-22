*** Variables ***
#Connection
${REMOTE_URL}    ${SAUCELABS_REMOTE_URL}    
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    8.0
${DEVICE_NAME}    Android Emulator
${APP}    storage:filename=demo-saucelabs.apk
${AUTOMATION_NAME}    UiAutomator2
${JOB_NAME}    Robot Framework Appium Android Tests
#Mapping
${HAMBURGUER_MENU}      accessibility_id=open menu