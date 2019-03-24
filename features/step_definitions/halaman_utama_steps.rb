Given("I am on the halaman utama") do
  visit "/"
end

When("Visit Halaman Utama, I should see {string}") do |string|
  page.has_content?(string)
end

And("there is Selamat {string}") do |string|
  page.has_content?(string)
end

Then("there is Untuk {string}") do |string|
  page.has_content?(string)
end