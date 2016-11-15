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
  # open_url_address #Method of Web_url in env.rb file
  # sleep 5
  # @browser.div(id: 'closeButton').when_present.click
  @browser.goto "https://www.macys.com/account/signin?cm_sp=navigation-_-top_nav-_-signin"
  # sleep 5
  # @browser.a(id: 'globalMastheadSignIn').click

  # puts email
  # puts password
  sign_in(@email,@password)
  sleep 5
  @browser.div(id: 'closeButton').when_present.click
end

# When(/^I select the Shop now option$/) do
#    sleep 5
#    @browser.div(id: 'closeButton').when_present.click
#    @menu_data = @browser.div(id: "globalMastheadCategoryMenu").text
#    menu_items = @menu_data.to_s.split()
#    # random_number = rand(1..16)
#    #  item = menu_items[random_number]
#    # puts item
#    menu_item_selection('JEWELRY')
# end

When(/^I select the Men's category$/) do
  sleep 5
  @browser.li(id: 'flexLabel_1').when_present.click
  # @browser.div(id: 'row_106_4').when_present.click
  sleep 5
  @item_list = @browser.div(id: 'row_106_4').text
  sleep 5
  # @items = @item_list.to_s.split()
  # @random_number = rand(0..11)
  # @selected_item = @items[@random_number]
  puts @selected_item

end

# You can implement step definitions for undefined steps with these snippets:

And(/^I select the desired item$/) do
  selection_of_item("Sweaters")
end

# This step is from pop-up sale ofer frature
When(/^I select an item category$/) do
  # pending # Write code here that turns the phrase above into concrete actions
end




And(/^I add the item to the bag$/) do

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


def sign_in(email,password)
  # @browser.input(id: 'email').set(email.to_s)
  # sleep 5
  @browser.text_field(id: 'email').when_present.set(email)
  # sleep 5
  @browser.text_field(id: 'password').when_present.set(password)
  # sleep 5
  @browser.button(id: 'signInBtn').when_present.click
end

# def menu_item_selection(item)
#  puts "Item : "
#  puts item
#  if item == 'Coats' or '$' or "Jackets"
#    sleep 5
#    selection_of_item(item)
#  end
#  if item == '&'
#    @browser.div(id: 'cate_Coats and Jackets').when_present.click
#    @browser.li(id: "2933436").when_present.click
#  end
#  if item == 'Jackets'
#    @browser.div(id: 'cate_Coats and Jackets').when_present.click
#    @browser.li(id: "2933436").when_present.click
#  end
#
#  if item == 'Shoes'
#    @browser.li(id: 'cate_Shoes').when_present.click
#  end
#
#  if item == 'Sweaters'
#    @browser.li(id: 'cate_Sweaters').when_present.click
#  end
#
#  if item == 'Suits'
#    @browser.li(id: 'cate_Suits and Suit Seperates').when_present.click
#  end
#
#  if item == '&'
#    @browser.li(id: 'cate_Suits and Suit Seperates').when_present.click
#  end
#
#  if item == 'Seperates'
#    @browser.li(id: 'cate_Suits and Suit Seperates').when_present.click
#  end
#
#  if item == 'Jeans'
#    @browser.li(id: 'cate_Jeans').when_present.click
#  end
#
#  if item == 'Pants'
#    @browser.li(id: 'cate_Pants').when_present.click
#  end
#
#   # if item == 'BED'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_7495').click
#   # end
#   # if item == '&'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_7495').click
#   # end
#   # if item == 'BATH'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_7495').click
#   # end
#   #
#   # if item == 'WOMEN'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_118').click
#   # end
#   #
#   # if item == 'MEN'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_1').click
#   # end
#   #
#   # if item == 'JUNIORS'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_16904').click
#   # end
#   #
#   # if item == 'KIDS'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_5991').click
#   # end
#   #
#   # if item == 'BEAUTY'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_669').click
#   # end
#   #
#   # if item == 'SHOES'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_13247').click
#   # end
#   #
#   # if item == 'HANDBAGS'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_26846').click
#   # end
#   #
#   # if item == '&'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_26846').click
#   # end
#   #
#   # if item == 'ACCESSORIES'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_26846').click
#   # end
#   #
#   # if item == 'JEWELRY'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_544').click
#   #   sleep 5
#   #   @browser.div(id: 'chanelCatIconImgDiv').click
#   #   @browser.a(name: 'p2554904').when_present.click
#   # end
#   #
#   # if item == 'WATCHES'
#   #   sleep 5
#   #   @browser.li(id: 'flexLabel_23930').click
#   # end
#
# end