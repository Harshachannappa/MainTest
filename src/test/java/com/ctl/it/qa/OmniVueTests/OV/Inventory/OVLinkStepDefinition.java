package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVLinkStepDefinition {
	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	
	
	@And("^I go to \"([^\"]*)\" Search type and select \"([^\"]*)\" as Inventory type$")
	public void i_go_to_Search_type_and_select_inventory_type (String arg1, String arg2) throws Throwable {
		
		
		actvtnpage.ddl_searchType.selectByVisibleText(arg1);
		Thread.sleep(1000);
		actvtnpage.ddl_invntryType.selectByVisibleText(arg2);
		
	}
	
	@And("^I select Link type as \"([^\"]*)\"$")
	public void i_select_link_type_as (String Ltype) throws Throwable {
		
		actvtnpage.ddl_Link_type.selectByVisibleText(Ltype) ;
		
	}
	
	
}
