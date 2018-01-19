BASE_URL = 'http://automationpractice.com/'.freeze
USERNAME = 'db@mailinator.com'.freeze
TEST_COMMENT = 'TEST COMMENT 001'.freeze
SCREENSHOT_DIRECTORY = 'features/reports/screenshots'.freeze

require 'page-object'
require 'cucumber'
require 'rspec/matchers'

World(PageObject::PageFactory)
