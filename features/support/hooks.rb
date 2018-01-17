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
    @browser.screenshot.save SCREENSHOT_DIRECTORY + "/" + (Time.now).to_s.gsub(" ", "_") + "_" + scenario.name + ".png"
  end
end

at_exit do
  browser.close
end