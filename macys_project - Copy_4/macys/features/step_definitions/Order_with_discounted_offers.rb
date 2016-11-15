require 'yaml'
include Web_url
require 'page-object'
# require 'rexml/document'
# include REXML
require 'rubygems'

 Given(/^I am on the Macys home page$/) do
   @browser = init_browser_var
   open_url_address #Method of Web_url in env.rb file
   sleep 5
   @browser.div(id: 'closeButton').when_present.click
 end


 When(/^I select the Shop now option$/) do
   sleep 5
     @browser.li(index: 1).click
   # @browser.find('special 50 percent off, womens boots, regular 59.50 to $388. select styles.').click
 end


# You can implement step definitions for undefined steps with these snippets:

And(/^I select the desired item$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end

# This step is from pop-up sale ofer frature
When(/^I select an item category$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end

And(/^I select the item color and size$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end


And(/^I add the item to bag$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end

# Skipped step

# You can implement step definitions for undefined steps with these snippets:

And(/^I enter the customer details$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end


# You can implement step definitions for undefined steps with these snippets:

Then(/^I should see the item is purchased$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end
