package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVHomepage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
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
		
		enduser.createtabselect(type);
		/*try {
		actvtnpage.ddl_createType.selectByVisibleText(type);
		//actvtnpage.btn_create_subcform.click();
		
			Thread.sleep(1000);
			actvtnpage.btn_create.click();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();*/
		//}
		
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
	
	@Then("^I Click on the Create Button in Order Details page$")
	public void I_Click_on_the_Create_Button_in_Order_Details_page() throws Exception {		
		enduser.Createbutton_functionality();
	}
	
	@And("^I click on \"([^\"]*)\" button in MLTO Search page$")
	public void Edit_button_MLTOsearch(String action) throws Exception {		
		enduser.action_button_MLTO_Search(action);
	}
	
	//***********************************************************************************************************//
	//																											 //
	//																											 //
	//									Search Section															 //
	//																											 //
	//***********************************************************************************************************//
	
	@Then("^I validate \"([^\"]*)\" attributes in Search page for \"([^\"]*)\"$")
	public void Search_form_atrribute_validation(String str1,String str2) throws Exception {		
		enduser.Searchform_attribute_validation(str1,str2);
	}
	
	@Then("^I validate \"([^\"]*)\" attributes in Edit form for \"([^\"]*)\"$")
	public void Edit_form_atrribute_validation(String str1,String str2) throws Exception {		
		enduser.Editform_attribute_validation(str1,str2);
	}
	
	
	
	//***********************************************************************************************************//
	//																											 //
	//																											 //
	//									Validation Section														 //
	//																											 //
	//***********************************************************************************************************//
	
	
	@Then("^I validate \"([^\"]*)\" attributes in create form for \"([^\"]*)\"$")
	public void Create_form_atrribute_validation(String str1,String str2) throws Exception {		
		enduser.Createform_attribute_validation(str1,str2);
	}
	
	@Then("^I Validate \"([^\"]*)\" button in MLTO search page which should be \"([^\"]*)\"$")
	public void mlto_button_validation(String btn, String state) throws Exception {		
		enduser.Orderbutton_validation(btn,state);
	}
	
}
