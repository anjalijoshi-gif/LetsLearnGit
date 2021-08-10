Feature: feature to test login functionality
  
Scenario: Check login is successfull with valid credentials
  
  Given user is on login page
  When user enter usename and password
  And click on login button
  Then user is naviagated to home page
  
  Scenario Outline: Check login is successfull with valid credentials
  
  Given user is on login page
  #Given user is on login page
  When user enter <usename> and <password>
  And click on login button
  Then user is naviagated to home page
  
 
