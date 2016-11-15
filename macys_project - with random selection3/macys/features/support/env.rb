require 'rspec'
require 'page-object'
require 'watir-webdriver'
require 'faker'
require 'data_magic'

World(PageObject::PageFactory)
module Web_url
  def init_browser_var
    @browser = Watir::Browser.new :'firefox'
  end
  def open_url_address
    # sleep 5
    @browser.goto "http:macys.com"
  end
#   @web_url_var = Web_url.load_env_url :'www.macys.com'

  def selection_of_item(item)
    #For Coats and Jackets
    puts item
    if item == "Coats"
      sleep 5
      @browser.img(alt: 'Coats and Jackets').click
      sleep 5
      @browser.a(name: "p2361618").click
      sleep 5
      @browser.li(title: 'M').click
      sleep 5
      @browser.button(id: 'addToBagButton2361618').when_present.click
      sleep 5
      @browser.img(id: 'btnCheckout').when_present.click
      # sleep 5
      # @browser.a(id: "shippingLink" ).when_present.click
      sleep 5
      # @browser.button(id: 'intlContinueCheckout').when_present.click
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
      # @browser.text_field(id: 'password').when_present.set(password)
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
    end

    #For Shoes
    if item == "Shoes"
      puts item
      sleep 5
      @browser.div(id: 'cate_Shoes').when_present.click
      sleep 5
      @browser.a(name: "p2334186").click
      sleep 5
      @browser.div('8').click
      sleep 5
      @browser.button(id: 'addToBagButton2361618').when_present.click
      sleep 5
      @browser.img(id: 'btnCheckout').when_present.click
      # sleep 5
      # @browser.a(id: "shippingLink" ).when_present.click
      sleep 5
      # @browser.button(id: 'intlContinueCheckout').when_present.click
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
      # @browser.text_field(id: 'password').when_present.set(password)
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
    end


    if item == "Sweaters"
      puts item
      sleep 5
      @browser.div(id: 'cate_Sweaters').when_present.click
      sleep 5
      @browser.a(name: "p2769663").click
      sleep 5
      @browser.div('8').click
      sleep 5
      @browser.button(id: 'addToBagButton2361618').when_present.click
      sleep 5
      @browser.img(id: 'btnCheckout').when_present.click
      # sleep 5
      # @browser.a(id: "shippingLink" ).when_present.click
      sleep 5
      # @browser.button(id: 'intlContinueCheckout').when_present.click
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
      # @browser.text_field(id: 'password').when_present.set(password)
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
    end

    if item == "&"
      sleep 5
      @browser.img(alt: 'Coats and Jackets').click
      sleep 5
      @browser.a(name: "p2361618").click
      sleep 5
      @browser.li(title: 'M').click
      sleep 5
      @browser.button(id: 'addToBagButton2361618').when_present.click
      sleep 5
      @browser.img(id: 'btnCheckout').when_present.click
      # sleep 5
      # @browser.a(id: "shippingLink" ).when_present.click
      sleep 5
      # @browser.button(id: 'intlContinueCheckout').when_present.click
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
      # @browser.text_field(id: 'password').when_present.set(password)
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
    end

    if item == "Jackets"
      sleep 5
      @browser.img(alt: 'Coats and Jackets').click
      sleep 5
      @browser.a(name: "p2361618").click
      sleep 5
      @browser.li(title: 'M').click
      sleep 5
      @browser.button(id: 'addToBagButton2361618').when_present.click
      sleep 5
      @browser.img(id: 'btnCheckout').when_present.click
      # sleep 5
      # @browser.a(id: "shippingLink" ).when_present.click
      sleep 5
      # @browser.button(id: 'intlContinueCheckout').when_present.click
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
      # @browser.text_field(id: 'password').when_present.set(password)
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
      # sleep 5
      # @browser.a(id: "isWithoutProfile" ).when_present.click
    end
  end
end