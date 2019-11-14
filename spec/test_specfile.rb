require 'selenium-webdriver'

describe 'first test case' do
    example 'testing sum of two numbers' do
        #Arrange
        number_one = 10
        number_two = 5

        #Act
        result = number_one + number_two

        #Assert
        expect(result).to eq(15)
    end
end