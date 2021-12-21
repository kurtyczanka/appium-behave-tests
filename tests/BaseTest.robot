*** Settings ***
Library  AppiumLibrary


*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   10.0
${DEVICE_NAME}  d25c2f0
${APP_PACKAGE}  com.l
${APP_ACTIVITY}  com.l.ListonicMidletActivity
${ACCEPT_COOKIES_BTN}  id=com.l:id/button_agree
${CLOSE_AD_BTN}  id=com.l:id/premium_promotion_close_iv


*** Keywords ***
Open Listonic on Main View
  Open Application  http://127.0.0.1:4723/wd/hub  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  deviceName=${DEVICE_NAME}
  ...  appPackage=${APP_PACKAGE}  appActivity=${APP_ACTIVITY}
  Accept cookies
  Close advertisement


Accept cookies
  click element  ${ACCEPT_COOKIES_BTN}

Close advertisement
  click element ${CLOSE_AD_BTN}