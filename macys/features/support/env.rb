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
    @browser.goto "http:macys.com"
  end

  def selection_of_item(item)
    #For selection of Coats
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
      sleep 5
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
    end

    #For selection of Shoes
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
      sleep 5
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
    end

    #For selection of Sweaters
    if item == "Sweaters"
      puts item
      sleep 5
      @browser.div(id: 'cate_Sweaters').when_present.click
      sleep 5
      @browser.a(name: "p1698192").click
      sleep 5
      @browser.a(id: 'viewMemberItems_img').click
      sleep 5
      @browser.li(class: 'horizontal size').click
      sleep 5
      @browser.button(id: 'addToBagButton3036280').when_present.click
      sleep 5
      @browser.img(id: 'm_atb_checkout').click
      sleep 5
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
    end

    #Below code is written for adjustmnet of item selection if "&" is encountered in random item selection
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
      sleep 5
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
    end

    ##For selection of Jackets
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
      sleep 5
      @browser.button(id: 'continueCheckout').when_present.click
      sleep 5
    end
  end
end