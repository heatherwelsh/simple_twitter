require('test/unit')
require('mocha')
require('simple_twitter')

class Twitter_Search_Test < Test::Unit::TestCase
  def test_twitter_mocking

    file_name = File.expand_path('../test/JSON.json', File.dirname(__FILE__))
    response = stub('response', :body => File.read(file_name))
    HTTParty.expects(:get).returns(response)

    # Test SimpleTwitter::Search#search
    twittersearch = SimpleTwitter::Search.new
    tweets = twittersearch.search("NIN")

    assert(tweets.is_a?(Hash))
    assert(tweets.has_key?('results'))

  end
end
