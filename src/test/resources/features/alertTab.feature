@karate 
Feature: Test progress bar tab

	Scenario: 01 Test the Single Modal 
		Given call read('start.feature@startProgress')
		And retry(5,10000).click("//ul[@class='dropdown-menu']//a[contains(text(),'Bootstrap Modals')]")
		And retry(5,10000).click("//body/div[@class='container-fluid text-center']/div[@class='row']/div[@class='col-md-6 text-left']/div[1]/div[1]/div[1]/div[2]/a[1]")
		And retry(5,10000).click("//div[@id='myModal0']//a[@class='btn'][contains(text(),'Close')]")
		
@test
	Scenario: 02 Test the multiple modal
		Given call read('start.feature@startProgress')
		And retry(5,10000).click("//ul[@class='dropdown-menu']//a[contains(text(),'Bootstrap Modals')]")
		And retry(5,10000).click("//body/div[@class='container-fluid text-center']/div[@class='row']/div[@class='col-md-6 text-left']/div[2]/div[1]/div[1]/div[2]/a[1]")
		And retry(5,10000).click("//div[@class='modal-body']//a[@class='btn btn-primary'][contains(text(),'Launch modal')]")
		And retry(5,10000).click("//div[@id='myModal2']//a[@class='btn'][contains(text(),'Close')]")
		And retry(5,10000).click("//div[@id='myModal']//a[@class='btn btn-primary'][contains(text(),'Save changes')]")