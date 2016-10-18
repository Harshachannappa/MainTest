package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVHomepage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVOrderStepDefinition {

	@Steps
	UserSteps enduser;	
	OVHomepage ovhomepage;
	OVActivationPage actvtnpage;
	
	
	//***********************************************************************************************************//
	//																											 //
	//																											 //
	//									Create Section															 //
	//																											 //
	//***********************************************************************************************************//
	
	@And("^I select \"([^\"]*)\" in Create Tab$")
	public void createform(String type){
		try {
		actvtnpage.ddl_createType.selectByVisibleText(type);
		//actvtnpage.btn_create_subcform.click();
		
			Thread.sleep(1000);
			actvtnpage.btn_create.click();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//actvtnpage.ddl_createType.selectByVisibleText(type);
	 }
	
	@And("^I validate attributes in create form for \"([^\"]*)\"$")
	public void i_validate_attributes_create_form(String type) throws Exception {
		Thread.sleep(5000);
		enduser.Validate_attribute_createform(type);
	}
	
	
	@And("^I fill all the fields in Order with \"([^\"]*)\"$")
	public void i_fill_all_the_fields_orders(String data) throws Exception {		
		enduser.fill_order_fields(data);
	}
	
	
	//***********************************************************************************************************//
	//																											 //
	//																											 //
	//									Search Section															 //
	//																											 //
	//***********************************************************************************************************//
	
	
	
	
	
	
	
	//***********************************************************************************************************//
	//																											 //
	//																											 //
	//									Validation Section														 //
	//																											 //
	//***********************************************************************************************************//
	
	
	
}
