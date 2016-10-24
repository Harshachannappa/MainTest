package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVDeviceStepDefinition {

	@Steps
	UserSteps enduser;	
	
	@And("^I click on \"([^\"]*)\" button in Search page$")
	public void i_click_on_button_search_form(String button) throws Exception {
		Thread.sleep(5000);
		enduser.Serach_button_actions(button);
	}
}
