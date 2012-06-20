require('test/unit')
require('mocha')
require('httparty')
require('simple_twitter.rb')

class MockExampleTest < Test::Unit::TestCase
  def test_example_mocking
    file_name = File.expand_path('../json/gaga.json', File.dirname(__FILE__))
    response = stub('response', :body => File.read(file_name))
    HTTParty.expects(:get).returns(response)


  end
end
