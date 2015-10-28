require 'vcr'
require 'webmock'

RSpec.configure do |config|
 config.expect_with :rspec do |expectations|
   expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

 config.mock_with :rspec do |mocks|
   mocks.verify_partial_doubles = true
  end
end

VCR.configure do |config|
  config.cassette_library_dir = 'spec/casettes'
  config.hook_into :webmock
end
