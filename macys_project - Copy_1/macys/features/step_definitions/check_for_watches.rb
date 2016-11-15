# include Homepage
# require 'enter_customer_information'
include Web_url #This will include the env.rb file containing the URL address of a website
# @browser = Watir::Browser.new :'firefox'

Given(/^I wish to buy a watch$/) do
  @browser = init_browser_var
      open_url_address #Method of Web_url in env.rb file
end

Then(/^I am on macys website$/) do\
   sleep 5
  @browser.div(id: 'closeButton').when_present.click
  # find('a[id="closeButton"]').click
  sleep 5
  @browser.div(id: 'flexLabel_23930').click
end

Then(/^I click on Men's Watches link on the featured categories link$/) do
  # sleep 5
  # @browser.div(id: 'flexLabel_23930').click
   sleep 5
  @browser.img(alt: "Men's Watches").when_present.click
end

Then(/^I click on the watch image$/) do
  sleep 5
  @browser.a(name: 'p2999458').when_present.click
end

Then(/^I select the size$/) do
  sleep 5
  @browser.li(title: 'S').click
end

Then(/^I click on Add To Bag$/) do
  sleep 5
  @browser.button(id: 'addToBagButton2999458').click
end

Then(/^I click on the Checkout link$/) do
  sleep 5
  @browser.img(id: 'btnCheckout').click
end

Then(/^I click on the Checkout button$/) do
  sleep 5
  @browser.button(id: 'continueCheckout').click
end


Then(/^I enter the user details$/) do
  @browser.a(id: 'shippingLink').click
  @browser.button(id: 'intlContinueCheckout').when_present.click
  @browser.a(id: 'isWithoutProfile').when_present.click
  sleep 5
  @browser.a(id: 'isWithoutProfile').when_present.click
  sleep 5
  # @customer_info = Customer_information.new
  enter_cust_info('Mahesh','Bongale','BTM','Bangalore','123456','999999999')
end



And(/^I submkit the transaction$/) do

end


def enter_cust_info(first_name,last_name,address_line1,city,zip_code,phone_no)
  @browser.text_field(id: 'rc-shipping-firstName').when_present.set(first_name)
  @browser.text_field(id: 'rc-shipping-lastName').when_present.set(last_name)
  @browser.text_field(id: 'rc-shipping-line1').when_present.set(address_line1)
  @browser.text_field(id: 'rc-shipping-city').when_present.set(city)
  sleep 5
  @browser.option(value: 'AK').click
  @browser.text_field(id: 'rc-shipping-postal-code').when_present.set(zip_code)
  @browser.text_field(id: 'rc-shipping-phone').when_present.set(phone_no)
end

