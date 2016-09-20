package com.ctl.it.qa.OmniVueTests.user;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateDevicePage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OSIPScreenStepDefinition {
	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	OVCreateDevicePage devcreatepage;
	//Tab selecting-Create or Search
	
	@And("^I clicked on \"([^\"]*)\" tab$")
	public void clickonTab(String Acttab) throws Exception {
		enduser.click_Tab(Acttab);
		System.out.println(Acttab);
	    
	}
	
	//Going to OSIP Mode
	
	@And("^I goto Activation Page$")
	
	public void I_goto_Activation_Page() throws Exception {
		
		enduser.click_activationTab();
		
	}
	
	/* ************************************************************************* */
						//Search Tab Items are Listed Down
	/* ************************************************************************* */

	@And("^I searched for ([^\"]*)$")			//Currently used by Order search & Passive Device Container 
	public void i_searched_for_device(String field) throws Exception {
		System.out.println(field);
		enduser.fill_fields(field);
		//enduser.click_searchBtn();	    
	}
	
	@And("^I Search for ([^\"]*) in Search Tab$")		//Currently used by Order search
	public void i_searched_for_orders(String field) throws Exception {
		System.out.println(field);
		enduser.fill_fields(field);
		//enduser.click_searchBtn();	    
	}
	
	@And("^I Search for the \"([^\"]*)\" data from Search Tab$") 
	public void i_searched_for_data(String field) throws Exception {
		//System.out.println(field+"Advaceorder");
		enduser.fill_fields(field);
		//enduser.click_searchBtn();	    
	}
	
	@And("^I click on search button for \"([^\"]*)\"$")			//Search button
	public void i_clicked_on_INV_search_button(String button) throws Exception 
	{
		enduser.click_searchBtn(button);
		//System.out.println("First stage");
	}
	

	@And("^I clicked on Advance Search for \"([^\"]*)\"$")
	public void i_clicked_on_Adcance_Search_for(String advanced_Search) throws Throwable {
	   // enduser.click_searchBtn(advanced_Search);
	}
	
	@And("^I Search order with DTN$")
	public void i_search_order_with_DTN() throws Exception{
		enduser.advancesearch();
}

	@And("^I click on \"([^\"]*)\"$")
	public void i_click_On_Button(String actkey) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	   // throw new PendingException();
		Thread.sleep(5000);
		//loginPage.getDriver().findElement(By.xpath(".//*[contains(@value,'Edit')]")).click();
		enduser.Qos_screen_edit_and_save(actkey);
		
	}
	
	@And("^I clicked on expand icon of Related tab \"([^\"]*)\" page$")
	public void i_clicked_on_expand_icon_of_related_tab_activations_page(String tab) throws Exception {
		enduser.select_expandIcon(tab);
		Thread.sleep(10000);

	}
	
	


	//End of Search Button items ****************************************************************
	
	

	

	@And("^I searched for ([^\"]*) device$")  //Check do we need this
	public void i_searched_for_a_device(String container3) throws Throwable {
		enduser.fill_fields_from("OVActivationPage","US43123-TC24975",container3);
		enduser.get_container_from_xml("OVActivationPage","US43123-TC24975",container3);
		System.out.println(enduser.get_container_from_xml("OVActivationPage","US43123-TC24975",container3));
		//enduser.click_searchBtn();
	     
	}
	
		/* ************************************************************************* */
								//Create Tab Items are Below
		/* ************************************************************************* */
	
	@And("^I go to \"([^\"]*)\" type and select \"([^\"]*)\"$")  //Selecting Type & sub-Type in Create form
	public void selectFormType(String type,String subtype) {
	//fillMandatoryFields(actvtnpage,get_data_for_page(actvtnpage),type);
	//enduser.selectType(type,subtype);
	enduser.selectFormType(type,subtype);
	}
	
	@And("^I Select \"([^\"]*)\" as Filter By value$")     //Selecting the filter type in Create form for Inventory Type
	public void selectFilterby(String tech) throws InterruptedException{
			actvtnpage.click_Technologytype(tech);
			Thread.sleep(1000);
		}
	
	@Then("Select the technology as \"([^\"]*)\" with Device Type as \"([^\"]*)\" with Sub-Type as \"([^\"]*)\"$")	//Selecting the TECHNOLOGY Type with Device & sub-device categories
	public void createFormpage(String techtype,String devtype,String devsubtype){
		enduser.createFormpage(techtype,devtype,devsubtype);
	}
	
	@Then("^Select the Role as \"([^\"]*)\" with Device Type as \"([^\"]*)\" with Sub-Type as \"([^\"]*)\"$") //Selecting the Role Type with Device & sub-device categories
	public void createroleform(String role,String devtype,String devsubtype){
		enduser.createroleform(role,devtype,devsubtype);
	}	

	@And("^Select Device Type as ([^\"]*) with Sub-Type as ([^\"]*)$")  //Selecting Device category Type & its Sub-category for Inventory Create form
	public void createFormpage(String devtype,String devsubtype){
		
		enduser.device_select(devtype,devsubtype);		
	}	
	
	@And("^I Select Port Type as \"([^\"]*)\"$")
	public void create_tab_porttype(String Porttype){
		enduser.selectport_createtab(Porttype);
	}
	
	@And("^I select \"([^\"]*)\" location type$")		//Sairam code merge---21/7/2016--@US48525 @TC53733
	public void select_locationtype(String locationtype) throws Throwable{
		enduser.locationtype(locationtype);
	}
	
	@And("^I entered details for the \"([^\"]*)\"$") // Shivaprasad code is dependent
	public void i_entered_details_for_gos(String field) throws Exception {
		System.out.println(field);
		enduser.fill_fields(field);
		// enduser.click_searchBtn();
	}
	
	@And("^I Select \"([^\"]*)\" for the drop down Device Sub Type$")
	public void i_select_splitter_option_for_gos(String splitter_option) throws Exception {
		System.out.println(splitter_option);
		enduser.select_devicesubtype(splitter_option);
		// enduser.click_searchBtn();
	}
	
	@And("^I click on Launch Create Form for \"([^\"]*)\"$") // shiva
	public void i_click_on_Launch_Create_Form(String create_button) throws Throwable {
		enduser.click_launch_create_form(create_button);
	
	}
	
	@And("^I Select \"([^\"]*)\" for the drop down Service Type$")
	public void i_Select_for_the_drop_down_Service_Type(String service_type) throws Throwable {                          //8.04.2016/shiva
	    // Write code here that turns the phrase above into concrete actions
		enduser.i_Select_for_the_drop_down_Service_Type_us(service_type);
	}
	
	/* ******************Network Create Form ************ */
	
	@And("^I Launch the Network form with \"([^\"]*)\"$")
	public void Enter_WirecenterCLLI_and_EngOrdId(String detailsgpon) throws Throwable{
		enduser.fill_fields(detailsgpon);		
		actvtnpage.btn_Netwrkbuildcreate();
	}
		
	//End of Create Button items ****************************************************************
	
	@Then("^Validate the fields present in the result page$") // Move to UserStep Definition
	public void attribute_validation(){
		enduser.attri_field();
	}
	
	

}
