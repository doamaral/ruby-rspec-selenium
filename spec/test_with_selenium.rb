require 'selenium-webdriver'

describe 'opening website' do
    
    #ignoring/skipping a test
    example 'opening google' do
        @driver.get "https://www.google.com/"
    end

    example 'interacting with browser elements :id, :tag_name, send_keys' do
        @driver.navigate.to "http://the-internet.herokuapp.com/login"
        @driver.find_element(:id, "username").send_keys "tomsmith"
        @driver.find_element(:id, "password").send_keys "SuperSecretPassword!"
        @driver.find_element(:tag_name, "button").click
        #:class, :class_name, :id, :name, :link_text ...

        element = @driver.find_element(:id, "flash")
        elementText = element.text

        expect(elementText).to include ("You logged into a secure area!")
    end

    example 'interacting with browser elements :class' do
        @driver.navigate.to "http://the-internet.herokuapp.com/login"
        @driver.find_element(:id, "username").send_keys "tomsmith_error"
        @driver.find_element(:id, "password").send_keys "SuperSecretPassword!"
        @driver.find_element(:tag_name, "button").click
        #:class, :class_name, :id, :name, :link_text ...

        #class="flash error"
        element = @driver.find_element(:class, "error")
        elementText = element.text

        expect(elementText).to include ("Your username is invalid!")
    end
end