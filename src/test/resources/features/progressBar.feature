@karate 
Feature: Test progress bar tab

	Scenario: 03 Test the Bootstrap Progress Bar
		Given call read('start.feature@startProgress')
		And retry(5,10000).click("//ul[@class='dropdown-menu']//a[contains(text(),'Bootstrap Progress bar')]")
		And retry(5,10000).waitFor("//button[@id='cricle-btn']")	
		And retry(5,10000).click("//button[@id='cricle-btn']")
		Then retry(5,10000).waitForText("//div[@class='percenttext']", '100%')

	
	Scenario: 02 Test the JQuery Download Progress Bar
		Given call read('start.feature@startProgress')
		And delay(10000)
		And retry(5,10000).click("//ul[@class='dropdown-menu']//a[contains(text(),'JQuery Download Progress bars')]")
		And retry(5,10000).waitFor("//button[@id='downloadButton']")
		And click("//button[@id='downloadButton']")
		And retry(5,10000).waitFor("//div[@id='dialog']")
		Then retry(5,10000).waitForText("//div[@class='progress-label']", 'Complete!')
		Then retry(5,10000).click("//button[contains(text(),'Close')]")
	

	Scenario: 01 Test the three values of inputform tab
		Given call read('start.feature@startProgress')	
		Then def elements = locateAll("//li[@class='dropdown open']//ul[@class='dropdown-menu']//li")
		Then match karate.sizeOf(elements) == 3
		Then print karate.sizeOf(elements)