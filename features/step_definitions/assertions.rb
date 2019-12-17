Then("(I/he/she) should see {string}") do |content|
  expect(page).to have_content content
end