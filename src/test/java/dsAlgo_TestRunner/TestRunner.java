package dsAlgo_TestRunner;
import org.testng.annotations.DataProvider;

import io.cucumber.testng.AbstractTestNGCucumberTests;

@io.cucumber.testng.CucumberOptions(
		//plugin = {"pretty", "com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"}, //reporting purpose
				plugin = { "pretty",
						"io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
						"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
						"json:target/cucumber-reports/CucumberTestReport.json"},
		monochrome=true,  //console output color
		 //tags from feature file
		features = {"src/test/resources/Features"},
		//tags = "@invalidpythoncode",	
		//tags={"@Login"}, //location of feature files (should be in src/test/reso
		glue={"dsAlgo_StepDefinition","hooks"})//location of  step definition files
		public class TestRunner  extends AbstractTestNGCucumberTests{
			
			@Override
		    @DataProvider(parallel = false)
		    public Object[][] scenarios() {
						
				return super.scenarios();
		    }
		}	
	
	
	
	
	
	
	
	
	

	//features = {"classpath:Features/BHomePage.feature:pageno."},// to run specific scenarion from line no
	//"src/main/resources/publish", tags="@Login, @Sendemail", (using tags to run specific sceanrion file)
	//tags = {"@currentTest"},//(add multiple tags to run like this)