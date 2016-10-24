package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateServicePage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import net.thucydides.core.annotations.Steps;

public class OVServiceStepDefinition {
	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	OVCreateServicePage servicecreatepage ;

	@And("^I Search \"([^\"]*)\" in Search Tab$")		
    public void i_Search_for(String arg1) throws Throwable {
           actvtnpage.ddl_searchType.selectByVisibleText(arg1);
    }
	
	@And("^I searched for \"([^\"]*)\" with \"([^\"]*)\" Service Type$")
    public void i_searched_for_and_Service_Type(String arg1, String arg2) throws Throwable { 
    
           
           Thread.sleep(1000);
           actvtnpage.ddl_invntryType.selectByVisibleText(arg1);
           
           Thread.sleep(1000);
           
           actvtnpage.ddl_Search_ServiceType.selectByVisibleText(arg2);
           
           Thread.sleep(1000);     
           
    }
	
	@And("^I fill all the mandatory fields required in service create form with \"([^\"]*)\"$")
	 public void i_fill_mandatory_field_service_form(String arg1) throws Throwable {
		Thread.sleep(3000);
		enduser.fill_fields_service(arg1);
	}
	
	@And("^I click on manual activation checkbox in service create form$")
	public void I_click_on_manual_activation_checkbox () throws Throwable {
	servicecreatepage.cbx_manualtask.click();
	System.out.println("Selected the manual checkbox");
	
	}
	

	@And("^I click on Create button on Service page$")
	public void i_click_on_Create_button_of_MEF_EVC_page() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	   // throw new PendingException();
		System.out.println("Click on Create Button");
		
		servicecreatepage.btn_create.click();
		Thread.sleep(5000);
		//actpage.btn_Individual_Location.click();
		
	}
	
	@And("^Service should get created successfully$")
	public void service_should_get_created_successfully() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	   // throw new PendingException();
		
		//System.out.println("Service created successfully");
		
		Thread.sleep(5000);
		servicecreatepage.tab_createserviceform.click();
		String tabname = servicecreatepage.tab_createserviceform.getText();
		System.out.println(tabname);
		
		//System.out.println(mefevccreatepage.tab_createserviceform.getText());
		Thread.sleep(3000);
		
		
		String txt = servicecreatepage.lbl_message.getText();
		System.out.println(txt.trim());
		Thread.sleep(3000);
		servicecreatepage.tab_service360view.click();
		System.out.println(servicecreatepage.tab_service360view.getText());
		
		
	}
	
	
	@And("^Task should be generated and displayed in related tab Tasks$")
	public void task_should_be_generated_and_displayed_in_related_tab_Tasks() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
		
		Thread.sleep(5000);
		servicecreatepage.tab_Tasksrelatedtab.click();
		System.out.println("Clicked on related tab = "+ servicecreatepage.tab_Tasksrelatedtab.getText());
		Thread.sleep(13000);
		System.out.println("Task id generated  = " + servicecreatepage.lbl_taskid.getText());	
		
		
	}
	
	}
