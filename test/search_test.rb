require('test/unit')
require('mocha')
require('httparty')
require('simple_twitter.rb')

class MockExampleTest < Test::Unit::TestCase
  def test_example_mocking
   t = SimpleTwitter::Search.new
  file_name = File.expand_path('../json_data.json', File.dirname(__FILE__))
   File.read(file_name)
    response = stub('response', :body => File.read(file_name))
  HTTParty.expects(:get).returns(response)
    r = t.search("gaga")
    assert(r.is_a?(Array))
    assert(r.all? {|t| t.is_a?(SimpleTwitter::Tweet)})
  end
end
