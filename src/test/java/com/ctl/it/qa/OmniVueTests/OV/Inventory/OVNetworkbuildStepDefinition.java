package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVNetworkbuildStepDefinition {
	
	@Steps
	UserSteps enduser;
	
	
	@And("^I select \"([^\"]*)\" as \"([^\"]*)\" in Search Tab$")
	public void i_select_search_tab(String type1, String type2) throws Exception {
		enduser.select_network_tab_values(type1,type2);
		//System.out.println(taskcheck);
	    
	}
	
	
	

}
