# frozen_string_literal: true

# Precondition: open the app and try it out
Given(/^I am logged into the app as the unregistered user$/) do
  try_us_out_btn = @driver.find_element(:id, "txtTryUsOut")
  try_us_out_btn.click
  next_btn = @driver.find_element(:id, "next")
  [1, 2, 3, 4].each do
    next_btn.click
  end
  continue_without_account_btn = @driver.find_element(:id, "continue_without_account")
  continue_without_account_btn.click
  wait_for_id_to_display('appBar')
end

# Click the magnifying glass icon
When(/^I navigate to the search screen$/) do
  search_btn = @driver.find_element(:id, "wine_explorer_tab")
  search_btn.click
end

# Click the first available filter such as "Red wine"
And(/^Search for some wine by using specified filters$/) do
  filter_icon = @driver.find_element(:id, "image_view")
  filter_icon.click
end

# Make sure several items are found
Then(/^Assert that expected result is found$/) do
  wait_for_id_to_display('card_info')
  total_found_text = @driver.find_element(:id, "subtitle").text
  total_found_number = total_found_text.to_i
  expect(total_found_number).to be > 0
end
