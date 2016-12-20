Feature: Access the Sogeti UK website

	# Our scenarios can either fit into one .feature file or, if neccesary, be spread out over multiple files
	# Each scenaio is laid out into steps defined in typical BDD fashion (Given... When... Then...)
	# Scenarios can be tagged using the '@' sign for use in the command-line script
	# Each .feature file must have a "Feature: " line at the top of the page
	# Each scenario must be tabbed properly, one indentation in from the "Feature: " and at least one carriage return difference in spacing between scenarios
	# Each step must be tabbed properly, one indentation in from "Scenario: "

	@Generic_Scenario_01
	Scenario: As a user, I want to access the Sogeti UK website
		Given I can access the Sogeti UK website
		Then I can see the Sogeti UK homepage