class RestClient
  require 'rest-client'
  def initialize(query='')
    @search = nil
    @root = "https://www.bing.com/seach?q="
    @query = query
  end

  def do_search
    @search = RestClient.get(@root + @query)
  end

  def get_code
    @search.code
  end

  def get_cookies
    @search.cookies
  end

  def get_headers
    @search.headers
  end

  def get_body
    @search.body
  end

end
