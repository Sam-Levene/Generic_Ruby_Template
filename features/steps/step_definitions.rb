# Steps are defined here, and can either directly reference the page being defined in the feature
# Or, they can be instanciated into a Page Object Model view, which won't be covered in this basic template
# Steps can be created without this page first, by running "cucumber" in the command-line, which without
# The steps, it will pre-generate them for you.

Given(/^I can access the Sogeti UK website$/) do

  visit("http://www.uk.sogeti.com/")

end

Then(/^I can see the Sogeti UK homepage$/) do

  if (page.title != "Sogeti UK - Home")
  	throw "Page title does not match expected outcome"
  end
  
end
