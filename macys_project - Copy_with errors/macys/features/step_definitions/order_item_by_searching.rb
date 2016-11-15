# require 'methods.rb'
include Web_url
# include PageObject
# include DataMagic
# class Item_selection
#   include PageObject
#   include DataMagic
#
#   def select_macys_item(data = {})
#     populate_page_with data_for(:item_selection, data)
#   end
#
# end

Given(/^I am on the Macys website$/) do
  @browser = init_browser_var
  open_url_address #Method of Web_url in env.rb file
end


When(/^I search for an item$/) do
  # puts "I AM ON SEARCH PAGE"
  @browser.text_field(id: 'globalSearchInputField').set("Watches")
  @browser.div(id: 'closeButton').when_present.click
  sleep 5
  @browser.input(id: 'subnavSearchSubmit').click
end


And(/^I get the list of items$/) do

end


And(/^I select an item$/) do

  # sleep 5
  # item_array = @browser.ul(id: 'thumbnails')
  #  puts item_array
  # test_text = "Mahesh"
  # element_selection("123456")
  #  @item_selection_obj = Item_selection.new("123456")
   # @item_selection_obj.select_macys_item()
end

And(/^I Add the item to Bag$/) do

end


And(/^I checkout the selected item$/) do

end


And(/^I enter the custometr details$/) do

end


Then(/^the item is purchased$/) do

end