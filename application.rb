require 'rubygems'
require 'sinatra'
require 'environment'
include ApplicationHelpers

get '/' do
  response.headers['Cache-Control'] = 'public, max-age=1000'
  haml(:index, :format => :html5)
end

get '/whois/:domain' do |domain|
  response.headers['Cache-Control'] = 'public, max-age=1000'
  @domain = domain.capitalize
  @result = %x{ whois #{domain} }.gsub("\n", "<br />\n")
  haml(:result, :format => :html5)
end

get '/dig/:domain' do |domain|
  response.headers['Cache-Control'] = 'public, max-age=1000'
  @domain = domain.capitalize
  @result = %x{ dig #{domain} }.gsub("\n", "<br />\n")
  haml(:result, :format => :html5)
end

get '/nslookup/:domain' do |domain|
  response.headers['Cache-Control'] = 'public, max-age=1000'
  @domain = domain.capitalize
  @result = %x{ nslookup #{domain} }.gsub("\n", "<br />\n")
  haml(:result, :format => :html5)
end