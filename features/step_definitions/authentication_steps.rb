Given(/^I am logged in$/) do
  (visit HomePage).log_in_link
  (on LoginPage).log_in
  expect((on AccountInfoPage).is_displayed?)
end
