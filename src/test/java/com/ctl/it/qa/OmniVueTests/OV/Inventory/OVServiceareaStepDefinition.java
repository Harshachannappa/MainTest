package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVServiceareaStepDefinition {
	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	
	@And("^I enter Service Area Name as \"([^\"]*)\"$")
	public void i_select_Service_Area_name_as (String SerAreaname) throws Throwable {
		
		actvtnpage.tbx_service_area_name.sendKeys(SerAreaname);
		
	}

}
