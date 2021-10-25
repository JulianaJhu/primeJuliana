*** Settings ***
Documentation            Todas as configurações de Setup e Teardown do projeto estarão aqui.
Resource                  package_mobile.robot

*** Keywords ***
Abrir aplicativo
    Set Appium Timeout              20
    Open Application                http://localhost:4723/wd/hub
    ...                             platformName=Android
    ...                             deviceName=emulator-5554
    ...                             automationName=uiautomator2
    ...                             appPackage=com.google.android.youtube
    ...                             appActivity=com.google.android.youtube.HomeActivity
    ...                             autoGrantPermissions=true

Fechar aplicativo
    Close Application