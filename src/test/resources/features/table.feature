@karate 
Feature: Test progress bar tab

	Scenario: 01 Test the Table pagination
		Given call read('start.feature@startTable')
		And retry(5,10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Table Pagination')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Table Pagination')]")
		And retry(5,10000).waitFor("//a[contains(text(),'2')]")
		And click("//a[contains(text(),'2')]")
		And match enabled("//a[@class='prev_link']") == true
		And match enabled("//a[@class='next_link']") == true
		And def text2 = text("//div[@class='col-md-6 text-center']")
		Then retry(5,10000).click("//a[@class='page_link'][contains(text(),'3')]")
		And match enabled("//a[@class='prev_link']") == true
		And def text1 = text("//div[@class='col-md-6 text-center']")
		Then match text1 != '>>'  
		

	Scenario Outline: 02 Test the Table pagination
		Given call read('start.feature@startTable')
		And retry(5,10000).waitFor("//ul[@class='dropdown-menu']//a[contains(text(),'Table Data Search')]")
		And click("//ul[@class='dropdown-menu']//a[contains(text(),'Table Data Search')]")
		And retry(5,10000).waitFor("//input[@id='task-table-filter']")
		And input("//input[@id='task-table-filter']", '<search>')
		And retry(5,10000).waitFor("//*[@id='task-table']")
		Then def variable = text("//*[@id='task-table']")
		Then match variable contains '<search>'
		
		
		Examples:
		|search		|
		|Jane Doe	|
	

