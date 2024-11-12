*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter is set to correct value when set with field
    Go To  ${HOME_URL}
    Input Text  number  123
    Click Button  Aseta
    Page Should Contain  nappia painettu 123 kertaa
