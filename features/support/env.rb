# frozen_string_literal: true

require 'appium_lib'

Before do
  # Desired Capabilities are sent by Appium clients to the server.
  # They tell the Appium drivers about how you want your test to work.
  caps = { caps:
               {  platformName: 'Android',
                  deviceName: 'emulator',
                  appPackage: 'vivino.web.app',
                  appActivity: 'com.sphinx_solution.activities.SplashActivity'
               }
  }
  @driver = Appium::Driver.new(caps, true)
  @driver.start_driver
end

# "after all"
After do
  @driver.driver_quit
end