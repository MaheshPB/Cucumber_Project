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
#   @web_url_var = Web_url.load_env_url :'www.macys.com'
end