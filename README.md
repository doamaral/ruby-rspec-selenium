
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
- require 'selenium-webdriver'
- Describe: our first scenario
