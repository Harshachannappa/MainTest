package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;

import cucumber.api.java.en.And;

public class OVServiceStepDefinition {
	
	OVActivationPage actvtnpage;

	@And("^I Search \"([^\"]*)\" in Search Tab$")		
    public void i_Search_for(String arg1) throws Throwable {
           actvtnpage.ddl_searchType.selectByVisibleText(arg1);
    }
	
	@And("^I searched for \"([^\"]*)\" with ([^\"]*) Service Type$")
    public void i_searched_for_and_Service_Type(String arg1, String arg2) throws Throwable { 
    
           
           Thread.sleep(1000);
           actvtnpage.ddl_invntryType.selectByVisibleText(arg1);
           
           Thread.sleep(1000);
           
           actvtnpage.ddl_Search_ServiceType.selectByVisibleText(arg2);
           
           Thread.sleep(1000);
           
          
           
    }

	
	}
