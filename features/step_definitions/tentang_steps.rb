Given("I am on the tentang visi-misi-kantor") do
  visit "tentang/visi-misi-kantor"
end

And("I should see {string}") do |string|
  page.has_content?(string)
end