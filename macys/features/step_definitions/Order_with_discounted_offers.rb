require 'yaml'
include Web_url
require 'page-object'
# include Item_selection
# require 'rexml/document'
# include REXML
require 'rubygems'
require 'data_magic'

Given(/^I am on the Macys home page$/) do
  @browser = init_browser_var
  open_url_address #Method of Web_url in env.rb file
  sleep 5
  @browser.div(id: 'closeButton').when_present.click
 end

Given(/^I am a valid user$/) do
  @data = DataMagic.load 'test_data.yml'
  @email = @data["customer_info"]["emailid"]
  @password = @data["customer_info"]["password"]
  @browser = init_browser_var
  sign_in(@email,@password)
  sleep 5
  @browser.div(id: 'closeButton').when_present.click
end

When(/^I select the Men's category$/) do
  sleep 5
  @browser.li(id: 'flexLabel_1').when_present.click
  # @browser.div(id: 'row_106_4').when_present.click
  sleep 5
  @item_list = @browser.div(id: 'row_106_4').text
  sleep 5
  @items = @item_list.to_s.split() #For converting the item list into array format
  @random_number = rand(0..2) #random menthod for generating random index used in item selection
  @selected_item = @items[@random_number] #selecting the item based on the random index generated
  # puts @selected_item

end


And(/^I select the desired item$/) do
  selection_of_item(@selected_item)
end

When(/^I select an item category$/) do

end

And(/^I add the item to the bag$/) do

end

And(/^I enter the customer details$/) do

end

Then(/^I should see the item is purchased$/) do

end

# Menthod for user sign-in
def sign_in(email,password)
  @browser.goto "https://www.macys.com/account/signin?cm_sp=navigation-_-top_nav-_-signin"
  @browser.text_field(id: 'email').when_present.set(email)
  @browser.text_field(id: 'password').when_present.set(password)
  @browser.button(id: 'signInBtn').when_present.click
end
