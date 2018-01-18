require 'watir'
require 'time'

browser = Watir::Browser.new :firefox
browser.window.maximize

Before do
  @price = 0.0 #Tracking state with instance vars is generally anti-pattern
  # however, current usage doesn't indicate a full state object
  @browser = browser
end

After do |scenario|
  @browser.goto(BASE_URL + 'index.php?mylogout=')
  if scenario.failed?
    @browser.screenshot.save SCREENSHOT_DIRECTORY + "/" + (Time.new.strftime("%Y_%m_%d__%H:%M:%S")) + "_" + (scenario.name + ".png").gsub(" ", "_")
  end
end

at_exit do
  browser.close
end