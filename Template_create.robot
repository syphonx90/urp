*** Settings ***
Documentation  This is some basic info about the whole suite
Library  Selenium2Library
Library  OperatingSystem

*** Variables ***
# Copy/paste the line bellow into the Terminal to run the script
# pybot -d results Tests/Amazon.robot
# robot -d results Tests/Amazon.robot
${BROWSER}  gc
${USER}  sranatunga@context1.com
${PW}  context@2017
${TEMPLATE}  TestingTemplatesham
${DESCRIPTION1}  Template for Automated Testingsham
${SQL}  SQL\nSQL\nSomething diferent
${SQL_File}


*** Test Cases ***
#Read SQL from File
  #  [Tags]  SQL from File
   # Log  File Content: ${SQL_File}

LogIn
    [Documentation]  This is the valid test for LogIn and LogOff with both correct user anad password
    #[Tags]  Valid
    Open Browser  http://10.0.1.47:8080/urp/urp/  ${BROWSER}
    Sleep  5s
    Click Button  xpath=//*[@id="show_login_btn"]
    Sleep  5s
    Click Element  xpath=.//*[@id='login_form']/div[1]/div/div/div/input
    Sleep  5s
    Input Text  identifier=login  ${USER}
    Sleep  5s
    Click Button  xpath=.//*[@id='pass-control']
    Sleep  5s
    Input Text  identifier=password  ${PW}
    Sleep  5s
    Click Button  Login
    Sleep  5s
Create Template
    Click Element  xpath=//*[@id="enw_menu"]/li[5]/a
    Sleep  5s
    Click Element  xpath=//*[@id="new_template_btn"]
    Sleep  5s
    Input Text  identifier=template_name  ${TEMPLATE}
    Sleep  5s
    Click Element  xpath=//*[@id="folder_id"]
    Sleep  5s
    Click Element  xpath=//*[@id="folder_id"]/option[11]
    Sleep  5s
    Input Text  identifier=description  ${DESCRIPTION1}
    Sleep  5s
    Click Element  xpath=.//*[@id='datagrid-row-r1-2-0']/td[1]
    Sleep  3s
    Click Element  xpath=.//*[@id='add_component_module_btn']
    Sleep  3s
    Click Element  xpath=.//*[@id='datagrid-row-r1-2-3']/td[1]/div
    Sleep  3s
    Click Element  xpath=.//*[@id='add_component_module_btn']
    Sleep  3s
    click element  xpath=.//*[@id='save_template_details_btn']

LogOff
    Click Button  xpath=//*[@id="logout_form"]/button
    Sleep  5s
    Close Browser

*** Keywords ***