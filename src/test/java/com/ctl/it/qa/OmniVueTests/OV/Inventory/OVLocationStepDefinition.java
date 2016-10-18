package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVLocationStepDefinition {

	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	
	@And("^I Search for sample Street Name as \"([^\"]*)\"$")
	public void i_select_street_name_as (String Streetname) throws Throwable {
		
		actvtnpage.tbx_streetname.sendKeys(Streetname);
		
	}
}
