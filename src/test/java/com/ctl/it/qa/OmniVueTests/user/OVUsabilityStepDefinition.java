package com.ctl.it.qa.OmniVueTests.user;

import com.ctl.it.qa.omnivue.tools.pages.common.OVAssociatedServicesPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateDevicePage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import net.thucydides.core.annotations.Steps;

public class OVUsabilityStepDefinition {

	@Steps
	UserSteps enduser;
	OVAssociatedServicesPage OVS;
	OVCreateDevicePage devcreatepage;
	
	/*@And("^Validate Service capability type fields as \"([^\"]*)\" Service$")
	public void Servicetypevalidation(String service) throws InterruptedException{
		
		enduser.Usability_validation("MEF EVC",service);
	}*/
	
	//Search Tab Validation part for Passive in Search Tab
	@Then("^I validated \"([^\"]*)\" technology and device type$")   //Selecting Technology Type in Create Form for Inventory
	public void i_validated_technology_and_device_type(String techType) throws Throwable 
	{
		enduser.validate_technology_and_device_type(techType);
	}
	
	//End of the Search Tab Validation
	
	@And("^validate the service type as \"([^\"]*)\" when service capability type as \"([^\"]*)\"$")
	public void validate_the_service_type_as_when_service_capability_type_as(String serviceType, String serviceCapabilityType) throws Throwable {
	    
		enduser.Usability_validation(serviceType,serviceCapabilityType);
		
	}
	
	@And("^validate the service type as \"([^\"]*)\" when service capability types as \"([^\"]*)\" & \"([^\"]*)\"$")
	public void validate_the_service_type_as_when_service_capability_types_as(String serviceType, String serviceCapabilityType1, String serviceCapabilityType2) throws Throwable {
	     enduser.Usability_validation(serviceType, serviceCapabilityType1, serviceCapabilityType2);
	}
	
	@Then("^validate the Service Tab$")				//Find some other alternative way or reusing approach
	public void validate_service_tab_noservice(){
		enduser.validate_service_tab();
	}

	
	@And("^I modify the service name from 77/L1XX/785391//CTQF to 77/L1XX/785391//ADCD")
	
	public void I_modify_the_service_name() throws Exception {
		
		enduser.update_serviceName();
		enduser.back_to_servicesTab();
		
	}
	
	@When("^I do Refresh$")
	
	public void I_do_Refresh() throws Exception {
		
		enduser.click_onRefresh();
	}
	
	@Then("^I should see the updated Associated service name$")
	
	public void I_should_see_the_updated_Associated_service_name() throws Exception {		
		
		enduser.is_having_updatedassociatedservicename();
		//enduser.Revertback_name();     						Re-Configure this code
		//enduser.logoutfrom_application();
		
	}
	
	@Then("^Add the CTag range \"([^\"]*)\"$")
	
	public void CTag_range(String ctag_range) throws Exception {
		//enduser.get_data_for_page(page)
		//System.out.println(x);
		Thread.sleep(10000);
		//OVS.btn_ctagadd.click();
		//Thread.sleep(20000);
		//get_container_from_xml("OVActivationPage","US31642-TC20884",ctag_range);
		//enduser.fill_fields_from("OVActivationPage","US31642-TC20884",ctag_range);
		//enduser.get_container_from_xml("OVActivationPage","US31642-TC20884",ctag_range);
		
		enduser.ctag_update(ctag_range);
	}
	
	@Then("^I validate Add contact button in contacts tab$")
	public void validate_add_contact_button(){
		enduser.validateaddcontactbutton();
	}
	
	@And("^Device got successfully created-$")  //For printing Device Name at the output file
	public void device_create_message(){
		enduser.device_create_msg();
	}
	
	@And("^I click on view icon of Search Result page$")  // Click on the View button in Search Result Page
	public void i_clicked_on_view_icon_of_search_result_page() throws Exception {
		Thread.sleep(3000);
		enduser.select_viewBtn();
		Thread.sleep(10000);
	     
	}
	
	@And("^Validate attributes in \"([^\"]*)\" Search page$")  //Validating Attributes present in the Search device page
	public void validate_attribute_search_page(String attributes){
		enduser.validate_attribute_search_page(attributes);
	}
	
	@Then("^Validate attributes in \"([^\"]*)\" device details page$") //Validating Attributes present in the Create device page
	public void validate_atributes_of_device_details_page(String devtype)throws Throwable {
		Thread.sleep(5000);
		System.out.println(devcreatepage.validatingAtributesOfPassiveCreatePage(devtype));	
		 }
	
	@Then("^Validate \"([^\"]*)\" radio button in device create page$")  //Validating the Radio button in create form page
	public void validate_radio_button_in_device_create_page(String radioButton) throws Throwable {		  
		enduser.validate_radio_button_device_create_page(radioButton); 
		}
	
	@And("^Validate Location CLLI$")
	public void validate_Location_CLLI_is_optional_for() throws Throwable {
		enduser.validate_Location_CLLI();
	}
	
	@And("^I verified view page and clicked on \"([^\"]*)\" tab$") // Move to UserStep Definition  //Needs to be removed--19/7/2016
	public void i_verified_view_page_of_device_and_clicked_on_services_tab(String tab) throws Exception {
		//enduser.verify_deviceSearchPage();
		System.out.println("entered the first stage"+tab);
		enduser.click_servicesTab(tab);
		
	}
	
	@And("^In the 360 view I click on the \"([^\"]*)\" tab$") 
	public void click_on_tabs_of_view_page(String tab) throws Exception {
		//enduser.verify_deviceSearchPage();
		System.out.println("entered the first stage"+tab);
		enduser.click_servicesTab(tab);
		
	}
	
	@And("^I should see BAM event logs displayed.$") 
	public void bam_logs_validation(){
		enduser.bam_tab_validation();
	}
	
	@And("^I should validate QOS template table$") 
	public void Qos_template_validation(){
	enduser.Qos_template_validation();
	}	
	
	@And("^I should validate \"([^\"]*)\" message$") 
	public void success_message(String msg){
		enduser.success_message_validation(msg);
		}	
	
	@Then("^Validate the Activations tab with Activation data$")
	public void validate_the_Activation_tab_with_Activation_Id() throws Throwable {
	enduser.Usability_validation();
	}
		
	
	@Then("^Validate fields in create device page for splitter$") // Remove
	// later
		public void Validate_fields_in_create_device_page_splitter() throws Exception {

			enduser.Validate_fields_in_create_device_splitter_page();	
		}

	@Then("^Validate apacheSolr for subscriber in create device service page$")
	public void validate_apacheSolr_for_subscriber_in_create_device_service_page() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
		
		enduser.validate_apacheSolr_for_subscriber_in_create_device_service_page_enduser();
		
	}
}
