Given("I am on the halaman utama") do
  visit "/"
end

When("Visit Halaman Utama, I should see {string}") do |string|
  page.has_content?(string)
end

And("I can see {string}") do |string|
  page.has_content?(string)
end

Then("I also see {string}") do |string|
  page.has_content?(string)
end