require 'page-object'
class Macys_methods
  @browser = init_browser_var

  def watch_selection
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

