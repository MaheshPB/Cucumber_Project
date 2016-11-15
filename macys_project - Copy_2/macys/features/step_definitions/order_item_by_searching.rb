
Given(/^I am on the Macys website$/) do
  @browser = init_browser_var
  open_url_address #Method of Web_url in env.rb file
end


When(/^I search for an item$/) do
  @browser.text_field(id: 'globalSearchInputField').set("Watches")
end



And(/^I get the list of items$/) do

end



And(/^I select an item$/) do

end



And(/^I Add the item to Bag$/) do

end



And(/^I checkout the selected item$/) do

end



And(/^I enter the custometr details$/) do

end


Then(/^the item is purchased$/) do

end
