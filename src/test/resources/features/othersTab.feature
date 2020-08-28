@karate 
Feature: Test Otherss bar tab

	Scenario: 01 Test the Dynamic data loading
		Given call read('start.feature@startOthers')
		And retry(5,10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Dynamic Data Loading')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Dynamic Data Loading')]")
		And retry(5,10000).waitFor("//button[@id='save']")
		And delay(10000)
		And click("//button[@id='save']")
		And retry(5,10000).waitForText("//div[@id='loading']",'First Name')
		And def display = text("//div[@id='loading']")
		And retry(5,10000).waitFor("//button[@id='save']")
		And click("//button[@id='save']")
		And retry(5,10000).waitForText("//div[@id='loading']",'First Name')
		And def display1 = text("//div[@id='loading']")
		Then match display != display1
		