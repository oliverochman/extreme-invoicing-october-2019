Then("(I/he/she) should see {string}") do |content|
  expect(page).to have_content content
end

Given("I should be on the invoices page") do
  expect(current_path).to eq invoices_path
end

Then("I should not see {string}") do |content|
  expect(page).not_to have_content content
end

Then("I should be on the Company Profile page") do
  expect(current_path).to eq new_company_path
end

Then("I should be on the Invoices page") do
  expect(current_path).to eq invoices_path
end

Then("I should be on the companies page") do
  expect(current_path).to eq company_path(Company.ids)
end 