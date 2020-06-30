*** Settings ***
Documentation  #This is some basic information about this whole suite

#This is the library that the tests uses to run
Library  SeleniumLibrary
#This is for generating random strings
Library  String

*** Variables ***


*** Test Cases ***
 Add User
   #Opens Website
   open browser  http://www.way2automation.com/angularjs-protractor/webtables/  Chrome
   #Makes Browser Big
   maximize browser window
   #Waits for 5 seconds
   sleep  5s
   #Clicks Add User Button
   click button  //button[@class='btn btn-link pull-right']
   #Waits for 2 seconds
   sleep  2s
   #Enters FirstName
   input text  //input[@name='FirstName']  Phindra
   #Waits for 2 seconds
   sleep  2s
   #Enters Surname
   input text  //input[@name='LastName']    sizani
   #Waits for 2 seconds
   sleep  2s
   #Generates random string
   ${ret}=    Generate Random String    12   [LETTERS]
   #Enters the random string
   input text  //input[@name='UserName']   ${ret}
   #Waits for 2 seconds
   sleep  2s
   #Enters Password
   input text  //input[@name='Password']   hello123
   sleep  2s
   #Select Radio Button
   Select Radio Button   optionsRadios    15
   #Waits for 2 seconds
   sleep  2s
   #Checks for roles
   Page Should Contain Element    xpath=//*[@name="RoleId"]    5s
   sleep  2s
   Click Element  xpath=//*[@name="RoleId"]
   #Choose Role (0,1,2)
   sleep  2s
   Select From List    xpath=//*[@name="RoleId"]    1
   #Enters Email Address
   input text  //input[@name='Email']  test@gmail.com
   sleep  2s
   #Enters Mobile Number
   input text  //input[@name='Mobilephone']  0732735599
   sleep  2s
   click button  //button[@class='btn btn-success']

   ${cellValue}=   get table cell  xpath=//table[contains(@class ,'smart-table table table-striped')] 	4	3
   Should Be Equal  ${ret}   ${cellValue}


*** Keywords ***
