require 'yaml'
include Web_url
# require 'rexml/document'
# include REXML
require 'rubygems'
require 'page-object'
require 'Faker'

# require 'nokogiri'
# require 'open-uri'
# require 'rest-client'

Given(/^I am on the Macys website$/) do
  @browser = init_browser_var
  sleep 5
  open_url_address #Method of Web_url in env.rb file
end


When(/^I search for an item$/) do
  @browser.text_field(id: 'globalSearchInputField').set("Men's Shoes")
  @browser.div(id: 'closeButton').when_present.click
  sleep 5
  @browser.input(id: 'subnavSearchSubmit').click
end



And(/^I get the list of items$/) do

end



And(/^I select an item$/) do
  include PageObject
  include DataMagic
  sleep 5
  @browser.a(name: "p1101219" ).click
end



And(/^I Add the item to Bag$/) do
  # sleep 5
  # @browser.li(title: '8').click
  # @browser.button(id: 'addToBagButton1101219').when_present.click
end

And(/^I Add the item to my Bag$/) do
  sleep 5
  @browser.li(title: '8').click
  @browser.button(id: 'addToBagButton1101219').when_present.click
  @browser.img(id: 'btnCheckout').when_present.click
  @browser.a(id: "shippingLink" ).when_present.click
  @browser.button(id: 'intlContinueCheckout').when_present.click
  sleep 5
  @browser.a(id: "isWithoutProfile" ).when_present.click
  sleep 5
  @browser.a(id: "isWithoutProfile" ).when_present.click

end

And(/^I enter the custometr details$/) do
  include PageObject
  include DataMagic
  # DataMagic.load 'test_data.yml'
  # @data_test = DataMagic.load 'test_data.yml'
  @fname = Faker::Name.first_name
  @lname = Faker::Name.last_name
  @add_line1 = Faker::Address.street_address
  @add_line2 = Faker::Address.street_address
  @city = Faker::Address.city
  @zipcode = Faker::Address.zip_code
  enter_cust_info(@fname,@lname,@add_line1,@add_line2,@city,@zipcode,5417543010)
end

Then(/^the item is purchased$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end
# Then(/^the item is purchased$/) do
#
# end
#
#  DataMagic.yml_directory = 'config/data'
#  DataMagic.load 'test_data.yml'
# #   # puts data_file i
# # # end
#  @random_data = DataMagic.randomize(test_data.yml)
#    puts @random_data
# class Random_data_search
#   include PageObject
#   include DataMagic
#       def populate_random_data
#         populate_page_with data_for :my_page
#       end
# end