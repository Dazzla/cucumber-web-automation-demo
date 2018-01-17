BASE_URL = 'http://automationpractice.com/'
USERNAME = 'db@mailinator.com'
TEST_COMMENT = 'TEST COMMENT 001'
SCREENSHOT_DIRECTORY = 'features/reports/screenshots'

require 'page-object'
require 'cucumber'
require 'rspec/matchers'

World(PageObject::PageFactory)