RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  
  config.before(:all) do
        options = Selenium::WebDriver::Firefox::Options.new(args: ['-headless'])
        @driver = Selenium::WebDriver.for(:firefox, options: options)
        puts "Runs before all test"
    end
    
    config.before(:each) do
        puts "Runs before each test" 
    end

    config.after(:all) do
        puts "\nRuns after all tests"
        @driver.quit
    end
    
    config.after(:each) do
    end

end
