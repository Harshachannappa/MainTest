package com.ctl.it.qa.OmniVueTests;

import net.serenitybdd.cucumber.CucumberWithSerenity;

import org.junit.BeforeClass;
import org.junit.runner.RunWith;

import com.ctl.it.qa.staf.Environment;
import com.ctl.it.qa.staf.STAFEnvironment;
import com.ctl.it.qa.staf.Steps;
import com.ctl.it.qa.staf.TestEnvironment;

import cucumber.api.CucumberOptions;

@TestEnvironment(Environment.ITV1)
@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features="src/test/resources/features", tags={"@Testred"})
public class CukesTest {
	
	@BeforeClass
	public static void setEnvironment() {

		STAFEnvironment.registerEnvironment(CukesTest.class);
		Steps.initialize("Omnivue.xml");
		
	}	
	
}