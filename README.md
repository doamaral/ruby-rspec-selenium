# ruby-rspec-selenium
Using the minimal number of libs to do UI Testing

- `bundle init` to Generate Gemfile
- Go to https://rubygems.org and look for the right way to pu rspec and selenium-webdriver at the Gemfile
```
gem 'rspec', '~> 3.9'
gem 'selenium-webdriver', '~> 3.142', '>= 3.142.6'
```
- `bundle install` to install all gems at Gemfile
- `rspec --init` to create rspec structure:
  - `spec` folder
    - `spec_helper.rb` file
  - `.rspec` file
