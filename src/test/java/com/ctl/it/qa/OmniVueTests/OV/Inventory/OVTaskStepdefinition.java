package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVTaskStepdefinition {
	
	@Steps
	UserSteps enduser;
	
	
	@And("^I validate the View & Edit for \"([^\"]*)\" in Task result page$")
	public void validate_Taskresult(String taskcheck) throws Exception {
		enduser.validate_taskresult(taskcheck);
		//System.out.println(taskcheck);
	    
	}
	
	
	@And("^I click on the \"([^\"]*)\" in Task result page$")
	public void click_view_taskt(String taskselect) throws Exception {
		enduser.click_viewtask(taskselect);		
	    
	}
	
	@And("^I Validate \"([^\"]*)\" of the Task$")
	public void Validate_view_taskpage(String viewtask) throws Exception {
		enduser.Taskviewpage(viewtask);		
	    
	}
	
	@And("^I need to validate \"([^\"]*)\" section for the GPON Autoform Task$")
	public void Validate_API_Section_GPON_taskpage(String viewtask) throws Exception {
		enduser.validateapisectiontask(viewtask);		
	    
	}
	
}
