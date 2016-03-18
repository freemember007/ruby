require 'rubygems'
require 'net/http'

def http_request(uri)
  Net::HTTP.start(uri.host, uri.port) do |http|
    uri = URI 'http://localhost:4567/foo'
http_request uri do |http, uri|
  http.get(uri.path)
end
  end
end

/Users/xjp/rubytest