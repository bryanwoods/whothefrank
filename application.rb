require 'rubygems'
require 'sinatra'

get '/' do
  "Try this: <a href='http://www.whothefrank.com/lookup/cheapramen.com'>" + 
    "http://www.whothefrank.com/lookup/cheapramen.com</a>"
end

get '/lookup/:domain' do |domain|
  %x{ whois #{domain} }.gsub("\n", "<br />")
end