BASE_URL = 'http://automationpractice.com/'
USERNAME = 'db@mailinator.com'
TEST_COMMENT = 'TEST COMMENT 001'
require 'page-object'
require 'cucumber'
require 'rspec/matchers'

World(PageObject::PageFactory)