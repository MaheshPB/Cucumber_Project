require 'yaml'
include Web_url
# require 'rexml/document'
# include REXML
require 'rubygems'
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
  # @data_set = @browser.div(id: 'search_landing_products')
  # puts @browser.ul(id: 'thumbnails')
  # puts "Data: "
  # puts @data_set
    include DataMagic
    # DataMagic.yml_directory = 'C:\Users\intimetec\RubymineProjects\macys_project\macys\congig\data'
    #  @data_file = DataMagic.load 'test_data.yml'
    #  puts "DATA: #{@data_file}"
    #  puts @data_file["element_id"]

  # dir_to_yaml = Dir.pwd + 'C:\Users\intimetec\RubymineProjects\macys_project\macys\test_data.yml'
  # @yaml_hash = YAML.load_file("#{dir_to_yaml}")
  # puts @yaml_hash["element_id"]

    # puts @data_file["item_selection"]["element_id"]
  #   # puts data_file i
  # # end
  # @random_data = DataMagic.randomize(test_data.yml)
  #   puts @random_data

  # YAML::load_file
  # dir_to_yaml = Dir.pwd + 'C:/Users/intimetec/RubymineProjects/macys_project/macys/config/data/'
  # data_file = YAML.load_file("C:/Users/intimetec/RubymineProjects/macys_project/macys/config/data/default.yml")
  # puts data_file["item_selection:"]["element_id"]

  # item_selection:
  # populate_page_with data_for(:element_id)
  # data

  # dir_to_yaml = Dir.pwd + 'config/data'
  # @yaml_hash = YAML.load_file("test_data.yml")

  # puts @browser.li('')

  #Nokogiri
  # page = Nokogiri::HTML(open("http://www1.macys.com/shop/featured/men's-shoes?intnl=true"))
  # data_file = DataMagic.load 'test_data.yml'
  #  puts "DATA: #{@data_file}"
  #  puts
  # page = Nokogiri::HTML(RestClient.get("http://http://macys.com/"))
  # page = Nokogiri::HTML(open("http://www.threescompany.com/"))
  # puts page.class

  # sleep 5
  data_array = Array.new(20)
  my_array = Array.new
  new_array = Array.new
  r = Random.new
  r.rand(1...10)
  @i = 0
  @data_test = DataMagic.load 'test_data.yml'
    # puts @browser.li(id: '1101219').text
  while @i < 10 do
    my_array = @data_test["item_selection"]["element_id#{@i}"]
    data_array = my_array.to_s.split()
    @i += 1
    new_array = data_array
    puts data_array.shuffle
     # puts item
  end
  sleep 5
  # @browser.a(name: 'p1101219').click
  # populate_page_with data_for :item_selection

end



And(/^I Add the item to Bag$/) do

end



And(/^I checkout the selected item$/) do

end



And(/^I enter the custometr details$/) do

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