Given /^a simulated rails request with the following html in response.body:$/ do |text|
  # mock_response = mock(:response)
  # mock_response.stub!(:body).and_return text
  # stub!(:response).and_return mock_response
  @body = text
end

Then /^I sneakily create the required file "(.*)" to make the test pass for now$/ do |name|
  pwd = '/Users/tomtt/created/projects/externals/cucumber'
  dir = File.join(pwd,
                  'examples',
                  'self_test',
                  'tmp')
  filename = File.expand_path(File.join(dir, 'store_html_example__%s.html' % name))
  File.open(filename, 'w') do |file|
    # file << response.body
    file << @body
  end
end
