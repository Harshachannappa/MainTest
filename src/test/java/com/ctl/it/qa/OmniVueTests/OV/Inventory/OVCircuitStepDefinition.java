package com.ctl.it.qa.OmniVueTests.OV.Inventory;

import com.ctl.it.qa.omnivue.tools.pages.common.OVActivationPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateCircuitPage;
import com.ctl.it.qa.omnivue.tools.pages.common.OVCreateServicePage;
import com.ctl.it.qa.omnivue.tools.steps.user.UserSteps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import net.thucydides.core.annotations.Steps;

public class OVCircuitStepDefinition {
	
	@Steps
	UserSteps enduser;
	OVActivationPage actvtnpage;
	OVCreateServicePage servicecreatepage ;
	OVCreateCircuitPage createcircuitpage ;
	
	
	@And("^I select Circuit type as \"([^\"]*)\"$")
	public void i_select_link_type_as (String Ltype) throws Throwable {
		
		actvtnpage.ddl_circuittype.selectByVisibleText(Ltype) ;
		}
	
	@And("^I select \"([^\"]*)\" as the Circuit type in Create Tab$")
		public void i_select_circuit_type_createtab (String Ltype) throws Throwable {
		
		actvtnpage.ddl_CircuitType_Createtab.selectByVisibleText(Ltype) ;
		}

	@And("^I fill all mandatory fields required with \"([^\"]*)\" in Circuit create form$")
	public void I_fill_all_mandatory_fields_required_for_Create_circuit (String arg1) throws Throwable {
	
		enduser.fill_fields_create_Circuit(arg1);
	
		servicecreatepage.btn_subscriberlookupicon.click();
		servicecreatepage.tbx_subcriber_name_window.sendKeys("TEST - JANET");
		createcircuitpage.btn_lookup.click();
		
		Thread.sleep(5000);
		
		servicecreatepage.lnk_subcribername.click();
		
		String subscriber_name = servicecreatepage.tbx_subscribername.getTextValue();
		System.out.println("successfully selected the Subscriber = "+ subscriber_name);
		
		// Provision status
		
		System.out.println("Checking Provision status field is enabled = " + createcircuitpage.tbx_Provision_status.isEnabled());
		
	
	
	}
	
	@And("^I select the \"([^\"]*)\" Start Device$")
	public void I_select_the_Start_Device(String arg1) throws Throwable {
	
		Thread.sleep(2000);
	
		createcircuitpage.btn_start_device_lookup.click();
	
		enduser.fill_fields_create_Circuit(arg1);
	
		createcircuitpage.btn_device_lookup.click();
	
		Thread.sleep(3000);
	
		createcircuitpage.lnk_Device_name.click();
	
		Thread.sleep(3000);
	
		String SDname = createcircuitpage.tbx_start_device_name.getTextValue() ;
		System.out.println("Start Device Name = " + SDname);
	
	}
	

	@And("^I fetch the Start Device ports$")
		public void I_fetch_the_Start_Device_ports () throws Throwable {
		
		
			createcircuitpage.btn_Sfetch_port.waitUntilClickable() ;
		
			createcircuitpage.btn_Sfetch_port.click();
		
			Thread.sleep(3000);

			createcircuitpage.ddl_Start_port_name.selectByIndex(1) ;
		
		
		}
	
	@And("^I select the \"([^\"]*)\" End Device$")
	public void I_select_the_End_Device(String arg1) throws Throwable {
	
		Thread.sleep(2000);
	
		createcircuitpage.btn_end_device_lookup.click();
	
		enduser.fill_fields_create_Circuit(arg1);
	
		createcircuitpage.btn_device_lookup.click();
	
		Thread.sleep(3000);
	
		createcircuitpage.lnk_Device_name.click();
	
		Thread.sleep(3000);
	
		String SDname = createcircuitpage.tbx_end_device_name.getTextValue() ;
		System.out.println("End Device Name = " + SDname);
	
	}


@And("^I fetch the End Device ports$")
	public void I_fetch_the_End_Device_ports () throws Throwable {


		createcircuitpage.btn_Sfetch_port.waitUntilClickable() ;

		createcircuitpage.btn_Efetch_port.click();

		Thread.sleep(3000);

		createcircuitpage.ddl_End_port_name.selectByIndex(1) ;


	}




@And("^I click on Create Circuit create form$")
public void I_click_on_Create_Circuit () throws Throwable {

	createcircuitpage.btn_create_circuit.click();
	
	Thread.sleep(5000);
	
	String circuitname = createcircuitpage.tab_circuit360view.getText() ;
	System.out.println("Circuit Name = " + circuitname );
	
	


}


@Then("^Circuit should get created successfully$")
public void Circuit_should_get_created_successfully () throws Throwable {

	
	
	createcircuitpage.tab_create_circuit_form.click();
	
	System.out.println( "Message = " + createcircuitpage.lbl_message.getText());
	
	


}

}
