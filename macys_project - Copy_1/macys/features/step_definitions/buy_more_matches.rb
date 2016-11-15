# require 'page-object'

def browser_variable
  @browser = init_browser_var
end

Then(/^click on the Keep Shopping link$/) do |my_choice|
  sleep 5
  puts my_choice[1]
  @browser.button(id: 'continueShoppingButton').click
end