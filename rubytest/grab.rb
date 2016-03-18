# encoding: utf-8

require 'rubygems'
require "open-uri" 
require 'json'

uri = 'http://h5.server.mangguoyisheng.com/sop/page/pv/api/tools/getHealthById?id=' + '1'
html_response = nil 
open(uri) do |http| 
  html_response = http.read
end
puts html_response

# response = nil
# open("contact.json","r") do |file|
# 	response = file.read
# 	puts file
# end
# json = JSON::parse(response)
# puts json
# json.each do |k,v|
# 	puts k
# end

# arr = [13906010571]

# arr.each do |mobile|
# 	uri = 'http://www.096.me/api.php?phone=' + mobile.to_s
# 	html_response = nil 
# 	open(uri) do |http| 
# 	  html_response = http.read
# 	end
# 	puts html_response
# end