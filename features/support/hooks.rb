require 'watir'
require 'time'

browser = Watir::Browser.new :firefox
browser.window.maximize

Before do
  @price = 0.0 #Tracking state with instance vars is a bad idea
  # however, current usage doesn't indicate a full state object
  @browser = browser
end


at_exit do
  browser.close
end