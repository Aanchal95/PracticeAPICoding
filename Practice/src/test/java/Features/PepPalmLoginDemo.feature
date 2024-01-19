@sanity
Feature: To verify the response status as 200 for all PepPalm API
Background:
#Declarations and file read of headers
 * def fetchDataFromPrerequisite = read('../Other/Prerequisite.json')
    * def baseUrl = fetchDataFromPrerequisite.config.PepPalm
    * def loginApi = fetchDataFromPrerequisite.config.LoginAPI
    * def actualHeaders = fetchDataFromPrerequisite.actualHeaders
    * def getCsvData = read('../Other/testData.csv')
    
   @TestDemo
Scenario: To Verify Login API
    * def mainUrl = baseUrl + loginApi
    * print mainUrl