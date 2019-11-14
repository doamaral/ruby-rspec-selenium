require 'selenium-webdriver'
require './animal.rb'

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

    example 'has text in string' do
        #Arrange
        text = "Lorem Ipsum Dolor"
        nail = "Lorem"

        #Act
        #Nothing to Act on

        #Assert
        expect(text).to include (nail)
    end

    example 'barking dog' do
        #Arrange
        my_dog = Animal.new

        #Act
        #Nothing to Act on

        #Assert
        expect(my_dog.bark).to be(true)
    end
end