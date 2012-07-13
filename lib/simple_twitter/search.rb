module SimpleTwitter
  class Search

    TS = "http://search.twitter.com/search.json"

    attr_accessor(:per_page)

    def initialize
      @per_page = 10
    end

    #Return a hash from twitters search page in JSON.
    def search (query)
      params = {
        :q => query,
        :rpp => @per_page,
      }

      response = HTTParty.get(TS,:query => params)
      JSON.parse(response.body)
    end
  end
end

