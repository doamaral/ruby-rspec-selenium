
# ruby-rspec-selenium

Using the minimal number of libs to do UI Testing

## Initial project structure

- `bundle init` to Generate Gemfile
- Go to [Rubygems](https://rubygems.org) and look for the right way to pu rspec and selenium-webdriver at the Gemfile

```ruby
gem 'rspec', '~> 3.9'
gem 'selenium-webdriver', '~> 3.142', '>= 3.142.6'
```

- `bundle install` to install all gems at Gemfile
- `rspec --init` to create rspec structure:
  - `spec` folder
    - `spec_helper.rb` file
  - `.rspec` file

## Writing first test script

- Create the first test file at `spec` folder `test_specfile.rb`
- Describe: our first scenario
  - All starts with a `describe` plus `it` (or `example`) commands
- To run tests, just type `rspec <specfile>.rb`
- It is not a actual test script without an assertion: using `expect` [[More info about Expectations]](https://www.rubydoc.info/gems/rspec-expectations/RSpec/Expectations)
- Creating class file to play around doing tests with an objects

## Using Selenium WebDriver
- First of all, you must Download [Firefox](https://github.com/mozilla/geckodriver/releases/tag/v0.26.0), [Chrome](https://chromedriver.chromium.org/downloads) Driver compatible with your Browser
- Put its path into the Path environment variable
- create file `test_with_selenium.rb`
- require 'selenium-webdriver'
- Start to use [Selenium API](https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings)
  - Start with `driver = Selenium::WebDriver.for :firefox or :chrome`
  - `driver.get "<URL>"` open and load a Web Page