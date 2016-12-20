Given(/^I can access the Sogeti UK website$/) do

  visit("http://www.uk.sogeti.com/")

end

Then(/^I can see the Sogeti UK homepage$/) do

  if (page.title != "Sogeti UK - Home")
  	throw "Page title does not match expected outcome"
  end
  
end
