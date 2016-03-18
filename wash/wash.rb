# encoding: utf-8

require 'rubygems'

require 'selenium-webdriver'

dr = Selenium::WebDriver.for :firefox

dr.manage.window.maximize

file = File.open('input.html', 'r').read

file.gsub!(/&amp;/, '&')

file.gsub!(/&lt;|&#60;/, '<')

file.gsub!(/&gt;|&#62;/, '>')

file.gsub!(/&quot;|&#34;/, '"')

file.gsub!(/&apos;|&#39;/, "'")

file.gsub!(/&nbsp;/, ' ')

file.gsub!(/<(?!img|p|br|\/p).*?>|<script[^>]*?>.*?<\/script>|(style|border|height|width)=".*?"/, '')

file.gsub!(/(<p) .*?["'].*["'](>)/, '\1\2')

file = '<style type="text/css"> p {font-size: 20px} img {width: 100%} </style>' + file

newFile = File.new("output.html", "w")

newFile.syswrite(file)

# puts IO.read(newFile)

dr.get 'file:///Users/xjp/wash/output.html'

sleep 3

dr.quit