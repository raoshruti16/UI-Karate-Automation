@karate
Feature: Test inputform tab

Scenario: 01 Test the Multi CheckBox
		Given call read('start.feature@startInput')
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Checkbox Demo')]")
		And retry(5, 10000).waitFor("//input[@id='check1']")
		And match value("//input[@id='check1']") == 'Check All'
		And  retry(5, 10000).click("//input[@id='check1']")
		And retry(5, 10000).waitFor("//input[@id='check1']")
		And retry(5, 10000).waitFor("//input[@id='check1']")
		And  retry(5, 10000).click("//input[@id='check1']")
		And delay(10000)
		And retry(5, 10000).waitFor("//input[@id='check1']")
		And match value("//input[@id='check1']") == 'Check All'


Scenario Outline: 02 Test the Single Radio Button
		Given call read('start.feature@startInput')	
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Radio Buttons Demo')]")
		And retry(5, 10000).waitFor("//label[contains(text(),'<gender>')]/input[1]")
		And delay(10000)
		Then click("//body/div/div/div/div/div/label[contains(text(),'<gender>')]/input[1]")
		And delay(10000)
		Then retry(5, 10000).click("//button[@id='buttoncheck']")
		And retry(5, 10000).waitFor("//p[@class='radiobutton']")
		And delay(10000)
		Then def display = text("//p[@class='radiobutton']")
		Then match display contains "<gender>"
		Then print display

		Examples:
		|gender	|
		|Male	|
		|Female	|	
	
	
	Scenario Outline: 03 Test the Multiple Radio Button
		Given call read('start.feature@startInput')	
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Radio Buttons Demo')]")
		And retry(5, 10000).waitFor("//div[@class='panel-body']//div//label[@class='radio-inline'][contains(text(),'<gender>')]")
		And click("//div[@class='panel-body']//div//label[@class='radio-inline'][contains(text(),'<gender>')]")
		And retry(5, 10000).waitFor("//label[contains(text(),'<age>')]")
		And click("//label[contains(text(),'<age>')]") 
		And delay(10000)
		And retry(5, 10000).click("//button[contains(text(),'Get values')]")
		And retry(5, 10000).waitFor("//p[@class='radiobutton']")
		And delay(10000)
		Then def display = text("//p[@class='groupradiobutton']")
		Then match display contains "<gender>"
		Then match display contains "<ExpectedAge>"
		Then print display
		
		Examples:
		|age		|gender	|ExpectedAge|
		|0 to 5		|Male	|0 - 5		|
		|5 to 15	|Female	|5 - 15		|
	
	
	Scenario Outline: 04 Test Ajax Form
		Given call read('start.feature@startInput')	
		And delay(10000)
		And retry(5, 10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Ajax Form Submit')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Ajax Form Submit')]")
		And retry(5, 10000).waitFor("//input[@id='title']")
		And input("//input[@id='title']","<name>")
		And input("//textarea[@id='description']","<comment>")
		And delay(10000)
		And retry(5, 10000).click("//input[@id='btn-submit']")
		And delay(10000)
		Then retry(5,1000).waitFor("//div[@id='submit-control']")
		And delay(10000)
		Then def display = text("//div[@id='submit-control']")
		And delay(10000)
		Then retry(5,1000).waitForText("//div[@id='submit-control']", 'Successfully!')
		
		
		Examples:
		|name		|comment		|
		|Shruti		|Hi, everyone	|		
		

	Scenario: 05 Test the Single CheckBox
		Given call read('start.feature@startInput')	
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Checkbox Demo')]")
		And retry(5, 10000).waitFor("//label[text()='Click on this check box']")
		And click("//label[text()='Click on this check box']")
		And retry(5, 10000).waitFor("//div[@id='txtAge']")
		Then def display = text("//div[@id='txtAge']")
		Then match display contains "Success"
		Then print display
	
		



	Scenario Outline: 06 Test the Show button
		Given call read('start.feature@startInput')	
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Simple Form Demo')]")
		And retry(5, 10000).waitFor("//input[@id='user-message']")
		And input("//input[@id='user-message']",'<msg>')
		And retry(5, 10000).waitFor("//button[contains(text(),'Show Message')]")
		And click("//button[contains(text(),'Show Message')]")
		And retry(5, 10000).waitFor("//span[@id='display']")
		Then def display = text("//span[@id='display']")
		Then match display contains "<msg>"
		Then print display
		
		Examples:
		|msg	|
		|Hey	|
		|Bye@123|
		
	
		
	Scenario Outline: 07 Test the Get Total button
		Given call read('start.feature@startInput')	
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Simple Form Demo')]")
		And retry(5, 10000).waitFor("//input[@id='sum1']")
		And input("//input[@id='sum1']",'<num1>')
		And retry(5, 10000).waitFor("//input[@id='sum2']")
		And input("//input[@id='sum2']", '<num2>')
		And retry(5, 10000).waitFor("//button[contains(text(),'Get Total')]")
		And click("//button[contains(text(),'Get Total')]")
		And retry(5, 10000).waitFor("//span[@id='displayvalue']")
		Then def display = text("//span[@id='displayvalue']")
		Then assert display == <Expected>
		Then print display
		
		Examples:
		|num1	|num2	|Expected	|
		|3		|4		|7			|
		|10		|10		|20			|


		

	Scenario Outline: 08 Test the Select DropDown
		Given call read('start.feature@startInput')	
		And retry(5, 10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Select Dropdown List')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Select Dropdown List')]")
		And retry(5,10000).click("//p[@class='selected-value']")
		And delay(10000)
		And retry(20,10000).select("select[id=select-demo]", '<day>')
		And retry(20, 10000).waitFor("//p[@class='selected-value']")
		Then def display = text("//p[@class='selected-value']")
		Then match display contains "<day>"
		Then print display
		
	
		Examples:
		|day		|
		|Tuesday	|
		|Friday		|
	
		
		

	Scenario Outline: 09 Test the input form submit
		Given call read('start.feature@startInput')	
		And retry(5, 10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Input Form Submit')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Input Form Submit')]")
		And retry(5, 10000).waitFor("//input[@placeholder='First Name']")
		And input("//input[@placeholder='First Name']","<fname>")
		And input("//input[@placeholder='Last Name']","<lname>")
		And input("//input[@placeholder='E-Mail Address']","<email>")
		And input("//input[@placeholder='(845)555-1212']","<phone>")
		And input("//input[@placeholder='Address']","<address>")
		And input("//input[@placeholder='city']","<city>")
		And delay(10000)
		And retry(5, 10000).select('select[name=state]', <state>)
		And input("//input[@placeholder='Zip Code']","<zip>")
		And input("//input[@placeholder='Website or domain name']","<website>")
		And click("//div[@class='col-md-4']//div[<host>]//label[1]")
		And input("//textarea[@placeholder='Project Description']","<proj>")
		And click("//button[@class='btn btn-default']")
	
		
		Examples:
		|fname	|lname	|email			|phone		|address		|city	|state		|zip	|website		|host	|proj	|
		|Shruti	|Rao	|s12@gmail.com	|9004415333	|Lakshmi park	|Thane	|4			|400606	|www.google.com	|1		|abc	|
		
	

	Scenario: 10 Test the seven values of inputform tab
		Given call read('start.feature@startInput')
		Then def elements = locateAll("//ul[contains(@class, 'dropdown-menu')]")
		Then match karate.sizeOf(elements) == 7
		Then print karate.sizeOf(elements)
		
	