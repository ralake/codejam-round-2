require 'faraday'
require 'json'

class RubyWrapper

  def chucknorrisify(joke_id, name)
    setup
    json = JSON.parse(response = conn.get '/jokes/#{joke_id}')
    puts json
  end

  def setup 
    conn = Faraday.new(:url => 'http://api.icndb.com') do |faraday|
      faraday.request  :url_encoded            # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end


end