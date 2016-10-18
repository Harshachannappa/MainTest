package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVAssociatedModServicesPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVAssociatedServicesPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateDevicePage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateServicePage;
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

public class OVTopologyStepDefinition {


	@Steps
	UserSteps enduser;	
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
	OVCreateServicePage ovg; 
	
	@And("^I fill the necessary fields with \"([^\"]*)\" data in Create Topology Page$") //Fill the Device create form page details
	public void fillTopologyData(String testdata) throws InterruptedException{
		enduser.fill_TopologyData(testdata);
	}
	
	@And("^I click on \"([^\"]*)\" button$")  //Create Button Click on Create Form for Inventory, Subscriber
	public void clickAdddevicecircuit(String button) throws InterruptedException{
		enduser.clickAdddevicecircuit(button);
		}
	
/*	@And("^I click on Add Device button$")  //Create Button Click on Create Form for Inventory, Subscriber
	public void clickAddDevice() throws InterruptedException{
		enduser.clickAddDevice();
		}*/ // 10/13/2016	Need to check if the it's impacting other region
	
	@And("^I verified attributes in Place Devices in Topology Page$")  //Create Button Click on Create Form for Inventory, Subscriber
	public void I_verified_attributes_in_Place_Devices_in_Topology_Page() throws InterruptedException{
		enduser.verifyAttributes();
		}
	
	@And("^I search Device Type as \"([^\"]*)\" with Device SubType as \"([^\"]*)\"$")
	public void i_search_Device_Type_as_with_Device_SubType_as(String devType, String devSubType) throws InterruptedException {
		enduser.searchDevice(devType,devSubType);
	}
	
	@Then("^I validate \"([^\"]*)\" data in the Topology Detail Page$")
	public void i_should_validate_data_in_the_Topology_Detail_Page(String template) throws Throwable {
		Thread.sleep(3000);
		enduser.validateTopologyDetail(template);
		Thread.sleep(10000);
	    
	}
	
	@Then("^I Click on \"([^\"]*)\" in the Topology Detail Page$")
	public void i_click_on_action_in_the_Topology_Detail_Page(String action) throws Throwable {		
		enduser.Topologyaction(action);
		Thread.sleep(10000);
	    
	}
	
	
	
}
