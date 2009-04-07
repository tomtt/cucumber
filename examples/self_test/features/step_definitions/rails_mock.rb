Given /^a simulated rails request with the following html in response.body:$/ do |text|
  debugger
  mock_response = mock(:response)
  mock_response.stub!(:body).and_return text
  stub!(:response).and_return mock_response
end

Then /^I sneakily create the required file to make the test pass for now$/ do
  filename = File.expand_path(
               File.join(@dir,
                         'tmp',
                         'store_html_example__i_am_tagged.html'))
  debugger
  File.open(filename, 'w') do |file|
    file << response.body
  end
end
