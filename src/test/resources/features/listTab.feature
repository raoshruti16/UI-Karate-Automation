@karate 
Feature: Test List box tab

	Scenario Outline: 01 Test the Bootstrap List Box
		Given call read('start.feature@startList')
		And retry(5,10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Bootstrap List Box')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Bootstrap List Box')]")
		And retry(5,10000).waitFor("//span[@class='glyphicon glyphicon-chevron-left']")
		And input("//div[@class='well text-right']//input[@placeholder='search']", '<name>')
		And retry(5,10000).click("//div[@class='well text-right']//li[@class='list-group-item'][contains(text(),'<name>')]")
		And retry(5,10000).click("//button[@class='btn btn-default btn-sm move-right']")
		And def textR = text("//li[@class='list-group-item active']")
		Then match textR contains '<name>'
		Then retry(5,10000).click("//div[@class='well']//i[@class='glyphicon glyphicon-unchecked']")
		Then retry(5,10000).click("//span[@class='glyphicon glyphicon-chevron-left']")
		Then def textL = text("//div[@class='well text-right']")
		Then match textL contains '<name>'
		
		Examples:
		|name			|
		|Morbi leo risus|
	
		
	
	Scenario Outline: 02 Test the Jquery List Box
		Given call read('start.feature@startList')
		And retry(5,10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'JQuery List Box')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'JQuery List Box')]")
		And retry(5,10000).waitFor("//button[@class='pAdd btn btn-primary btn-sm']") 
		And retry(10,10000).click("//option[contains(text(),'<name>')]")
		And retry(5,10000).click("//button[@class='pAdd btn btn-primary btn-sm']")
		And retry(5,10000).click("//option[contains(text(),'<name>')]")
		And retry(5,10000).click("//button[@class='pRemove btn btn-primary btn-sm']")
		And retry(5,10000).click("//button[@class='pAddAll btn btn-primary btn-sm']")
		Then retry(5,1000).click("//button[@class='pRemoveAll btn btn-primary btn-sm']")
		
		Examples:
		|name	|
		|Alice	|
		
		

	Scenario Outline: 03 Test the Bootstrap List Box
		Given call read('start.feature@startList')
		And retry(5,10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Data List Filter')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Data List Filter')]")
		And retry(5,10000).waitFor("//input[@id='input-search']")
		And input("//input[@id='input-search']", '<search>')
		And retry(5,10000).waitFor("//body/div[@class='container-fluid text-center']/div[@class='row']/div[@class='col-md-6 text-left']/section[@class='content']/div[@class='row']/div[@class='searchable-container']/div[6]/div[1]")
		And def result = text("//body/div[@class='container-fluid text-center']/div[@class='row']/div[@class='col-md-6 text-left']/section[@class='content']/div[@class='row']/div[@class='searchable-container']/div[6]/div[1]")
		Then match result contains '<search>'
		
		Examples:
		|search			|
		|Arman Cheyia	|
		
		
		
		

		
	
		