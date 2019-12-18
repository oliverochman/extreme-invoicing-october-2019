When("I click on {string}") do |element|
  click_on element
end

Given('(I/He/She) (am/is) on the index page') do
  visit root_path
end

Then("I fill in {string} with {string}") do |input, content|
  fill_in input, with: content
end

