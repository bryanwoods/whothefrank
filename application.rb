require 'rubygems'
require 'sinatra'

get '/' do
  "Try this: <a href='http://www.whothefrank.com/whois/cheapramen.com' + 
    http://www.whothefrank.com/whois/cheapramen.com</a>"
end

get '/whois/:domain' do |domain|
  %x{ whois #{domain} }.gsub("\n", "<br />")
end