# frozen_string_literal: true

def wait_for_id_to_display(id)
  wait = Selenium::WebDriver::Wait.new timeout: 10
  wait.until { @driver.find_element(:id, id).displayed? }
end