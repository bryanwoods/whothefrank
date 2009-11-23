require 'rubygems'
require 'sinatra'

get '/' do
  "Try this: /whois/bryanwoods4e.com"
end

get '/whois/:domain' do |domain|
  %x{ whois #{domain} }.gsub("\n", "<br />")
end