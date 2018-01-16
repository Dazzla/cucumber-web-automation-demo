require 'watir'
require 'time'
browser = Watir::Browser.new :firefox
browser.window.maximize

Before do
  @browser = browser
end


at_exit do
  browser.close
end