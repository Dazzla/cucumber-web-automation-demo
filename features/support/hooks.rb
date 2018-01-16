require 'watir'
require 'time'

browser = Watir::Browser.new :firefox
browser.window.maximize

Before do
  @price = 0.0 #Tracking state with instance vars is generally anti-pattern
  # however, current usage doesn't indicate a full state object
  @browser = browser
end

After do
  @browser.goto(BASE_URL+'index.php?mylogout=')
end

at_exit do
  browser.close
end