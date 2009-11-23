require 'rubygems'
require 'sinatra'

get '/' do
  "Try this: /whois/bryanwoods4e.com"
end

get '/whois/:domain' do |domain|
  whois_results = %x{ whois #{domain} }
  whois_results.gsub("\n", "<br />")
end