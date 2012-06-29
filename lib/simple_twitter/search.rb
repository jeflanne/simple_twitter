module SimpleTwitter

  class Search
    TWITTER_SEARCH = "http://search.twitter.com/search.json"
    def initialize
      @per_page = 10
      @lang = "en"
    end
    attr_accessor (:per_page)
    attr_accessor (:lang)
   def search(query)

      params = {:q => query,
        :rpp => per_page, :lang => lang
      }
      # Added lang parameter to let people choose language filter
      response = HTTParty.get(TWITTER_SEARCH, {:query =>params})
     nasty_hash = JSON.parse(response.body)
     nasty_hash['results'].map{|r| Tweet.new(r)}
   end
  end

end
