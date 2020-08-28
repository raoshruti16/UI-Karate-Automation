@karate 
Feature: 01 Test Date Picker Tab

	Scenario Outline: 03 Test the Jquery date picker
		Given call read('start.feature@startDate')
		And retry(5,10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'JQuery Date Picker')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'JQuery Date Picker')]")
		And retry(5,10000).waitFor("//input[@id='from']")
		And retry(5,10000).input("//input[@id='from']", '<Startdate>')
		And retry(5,10000).waitFor("//input[@id='from']")
		And def result = value("//input[@id='from']")
		Then match result == '<Startdate>'
		And retry(5,10000).waitFor("//input[@id='to']")
		And retry(5,10000).input("//input[@id='to']", '<Enddate>')
		And retry(5,10000).waitFor("//input[@id='to']")
		And def resultend = value("//input[@id='to']")
		Then match resultend == '<Enddate>'
		Then assert result < resultend
		
		Examples:
		|Startdate	|Enddate	|
		|08/10/2020	|09/22/2020	|
		