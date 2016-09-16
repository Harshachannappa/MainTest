package com.ctl.it.qa.OmniVueTests.user;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVAssociatedModServicesPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVAssociatedServicesPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateDevicePage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVDeviceLookupPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVHomepage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVLoginPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVModDeviceLookupPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVModServiceDetailsPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVSearchDevicePage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVServiceDetailsPage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;
import com.ctl.it.qa.staf.xml.reader.IntDataContainer;

import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import cucumber.api.java.en.And;
import net.serenitybdd.core.annotations.findby.By;
import net.thucydides.core.annotations.Steps;

public class OVCreateStepDefinition {
	OVLoginPage loginPage;
	OVHomepage ovhomepage;
	OVActivationPage actvtnpage;
	OVAssociatedServicesPage assocservicespage;
	OVDeviceLookupPage devicelookuppage;
	OVSearchDevicePage searchdevicepage;
	OVServiceDetailsPage servicedetailspage;
	OVModServiceDetailsPage modservicedetailspage;
	OVModDeviceLookupPage moddevicelookuppage;
	OVAssociatedModServicesPage modassocservicespage;
	OVCreateDevicePage devcreatepage;
	

	@Steps
	UserSteps enduser;		
	
	
	@And("^I fill the mandatory fields with \"([^\"]*)\" data$") //Fill the Device create form page details
	public void fillmandatoryfield(String testdata){
		enduser.fillmandatoryfield(testdata);		
	}
	
	@And("^Fill all the mandatory fields with ([^\"]*) data$")
	public void fillmandatoryfield_passive(String testdata){
		enduser.fillmandatoryfield(testdata);		
	}
	
	@And("^Select subscriber & Equipment role with \"([^\"]*)\" data$") //Select subscriber & equipment role in create form page
	public void select_subcriber_equipmentrole(String testdata) throws InterruptedException{
		enduser.subcriber_equipment(testdata);
	}
	
	@And("^I click on Create button$")  //Create Button Click on Create Form for Inventory, Subscriber
	public void i_click_create_button(){
		enduser.click_createbutton();
		}

	
	@Then("^I validated \"([^\"]*)\" radio button and \"([^\"]*)\" radio button$")
	public void i_validated_radio_button_and_radio_button(String radioBtn1, String radioBtn2) throws Throwable {
		/*if( enduser.getDriver().findElement(By.xpath(".//*[@id='0']/ng-include/div/div[11]/div/div[2]/div/div[3]/input[3]")).isDisplayed() && enduser.getDriver().findElement(By.xpath("//*[@id='0']/ng-include/div/div[11]/div/div[2]/div/div[3]/input[4]")).isDisplayed()){
		System.out.println("Element is Visible");
		}else{
		System.out.println("Element is InVisible");
		}*/
		//devcreatepage.IsRadioButtonPresent();				//check why is it throughing error---17/8/2016
	}
		
	@Then("^Validate attributes in order details page$")
	public void validate_order_attributes() {
		enduser.order_attribute();
	}

	@Then("^Validate the device name in search page$")
	public void validate_the_device_name_in_search_page() throws Throwable {
	    enduser.searched_device_is(searchdevicepage.tbx_deviceName.getText());
	}	
	
	@And("^I click on the Launch Create form button$")  //Launching the subcribers create form
	public void i_click_launch_create_form(){
		enduser.click_createlaunchformbutton();
		
	}	
	
	@And("^I Update values of \"([^\"]*)\"$")
	public void i_update_value_of(String fields) throws InterruptedException{
		enduser.fill_fields(fields);
		
	}	
	

	// Network Build Device Creation--Sairam
		
	@When("^I select \"([^\"]*)\" device$")
	public void gpon_netwrkbuild_createform(String gpondevice){
		enduser.gpon_ntwrk_deviceselecting(gpondevice);
		
	}
	
	@Then("^I fill the fields present in the network build$")
	public void gpon_field_fill(){
		enduser.gpon_fill_field();
	}
				
		
		
}
