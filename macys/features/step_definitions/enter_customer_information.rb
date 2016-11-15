require 'page-object'
# @browser = Watir::Browser.new :'firefox'

class Customer_information
  #method for writing the data to the text fields
  def enter_cust_info_1(first_name,last_name,address_line1,city,zip_code,phone_no)
    @browser = init_browser_var
    @browser.text_field(id: 'rc-shipping-firstName').when_present.set(first_name)
    @browser.textarea(id: 'rc-shipping-lastName').when_present.set(last_name)
    @browser.text_field(id: 'rc-shipping-line1').when_present.set(address_line1)
    @browser.text_field(id: 'rc-shipping-city').when_present.set(city)
      sleep 5
    @browser.text_field(value: 'AK').click
    @browser.text_field(id: 'rc-shipping-postal-code').when_present.set(zip_code)
    @browser.text_field(id: 'rc-shipping-phone').when_present.set(phone_no)
  end
end