require 'page-object'
class Macys_methods
  @browser = init_browser_var
  # def continueCheckout_method(parameter)
  #   # @browser = init_browser_var
  #   @browser.button(id: 'parameter').click
  # end

  def watch_selection
    # @browser.img(alt: "select_watch").when_present.click
    @browser.img(alt: "Men's Watches").click

    @watch_array = Array.new
    @watch_array = @browser.div(class: 'columned')
    puts "#{@watch_array}"
  end

  def checkout_item
    sleep 5
    @browser.button(id: 'continueCheckout').click
  end
end

# #class for data magic
# class Item_selection
#   include PageObject
#   include DataMagic
#
#   def select_macys_item(element_id)
#     populate_page_with data_for(:element_id)
#   end
#
# end