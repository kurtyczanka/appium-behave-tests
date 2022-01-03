*** Variables ***
${ANDROID_AUTOMATION_NAME}    UIAutomator2
${ANDROID_PLATFORM_NAME}      Android
${ANDROID_PLATFORM_VERSION}   10.0
${DEVICE_NAME}  d25c2f0
${APP_PACKAGE}  com.l
${APP_ACTIVITY}  com.l.ListonicMidletActivity
${ACCEPT_COOKIES_BTN}  id=com.l:id/button_agree
${CLOSE_AD_BTN}  id=com.l:id/premium_promotion_close_iv
${MAIN_SCR_EXP_TXT}  Stwórz swoją pierwszą listę \nzaplanuj zakupy \nszybciej i wygodniej
${MAIN_SCR_EXP_TXT_ELEMENT}  id=com.l:id/emptyViewTV


*** Keywords ***
Open Listonic on Main View
  Open Application  http://127.0.0.1:4723/wd/hub
  ...  automationName=${ANDROID_AUTOMATION_NAME}
  ...  platformName=${ANDROID_PLATFORM_NAME}
  ...  platformVersion=${ANDROID_PLATFORM_VERSION}
  ...  deviceName=${DEVICE_NAME}
  ...  appPackage=${APP_PACKAGE}
  ...  appActivity=${APP_ACTIVITY}

  # workaround for welcome screen which occurs ocassionaly
  click element at coordinates  145  2119
  Accept cookies
  Application is open on Main View

Accept cookies
  Wait Until Element Is Visible  ${ACCEPT_COOKIES_BTN}
  click element  ${ACCEPT_COOKIES_BTN}

Application is open on Main View
  wait until element is visible  ${MAIN_SCR_EXP_TXT_ELEMENT}  timeout=10
  Element Should Contain Text  ${MAIN_SCR_EXP_TXT_ELEMENT}  ${MAIN_SCR_EXP_TXT}