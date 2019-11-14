require 'selenium-webdriver'

describe 'opening website' do
    example 'opening google' do
        driver = Selenium::WebDriver.for :firefox
        driver.get "https://www.google.com/"
    end
end