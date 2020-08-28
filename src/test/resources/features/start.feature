Feature: Start the test
@startInput
	Scenario: Start the input form test
		Given driver 'http://www.seleniumeasy.com/test/'
		And maximize()
		And retry(10, 10000).waitFor("//a[@class='dropdown-toggle'][contains(text(),'Input Forms')]")
		And click("//a[@class='dropdown-toggle'][contains(text(),'Input Forms')]")
		
		
		
		
@startProgress		
	Scenario: Start the progress bar test
		Given driver 'http://www.seleniumeasy.com/test/'
		And maximize()
		And retry(5, 10000).waitFor("//a[@class='dropdown-toggle'][contains(text(),'Progress Bars')]")
		And click("//a[@class='dropdown-toggle'][contains(text(),'Progress Bars')]")
		
@startOthers		
	Scenario: Start the Others bar test
		Given driver 'http://www.seleniumeasy.com/test/'
		And maximize()
		And retry(5, 10000).waitFor("//a[@class='dropdown-toggle'][contains(text(),'Others')]")
		And click("//a[@class='dropdown-toggle'][contains(text(),'Others')]")
		
		
@startList		
	Scenario: Start the list test
		Given driver 'http://www.seleniumeasy.com/test/'
		And maximize()
		And retry(10, 10000).waitFor("//a[@class='dropdown-toggle'][contains(text(),'List Box')]")
		And click("//a[@class='dropdown-toggle'][contains(text(),'List Box')]")
		
		
@startDate		
	Scenario: Start the Date picker test
		Given driver 'http://www.seleniumeasy.com/test/'
		And maximize()
		And retry(10, 10000).waitFor("//a[@class='dropdown-toggle'][contains(text(),'Date pickers')]")
		And click("//a[@class='dropdown-toggle'][contains(text(),'Date pickers')]")
		
		
@startTable		
	Scenario: Start the Date picker test
		Given driver 'http://www.seleniumeasy.com/test/'
		And maximize()
		And retry(10, 10000).waitFor("//a[@class='dropdown-toggle'][contains(text(),'Table')]")
		And click("//a[@class='dropdown-toggle'][contains(text(),'Table')]")		
		
		
@startAlert	
	Scenario: Start the Date picker test
		Given driver 'http://www.seleniumeasy.com/test/'
		And maximize()
		And retry(10, 10000).waitFor("//a[@class='dropdown-toggle'][contains(text(),'Alerts & Modals')]")
		And click("//a[@class='dropdown-toggle'][contains(text(),'Alerts & Modals')]")		
		
		
		
		