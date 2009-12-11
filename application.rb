require 'rubygems'
require 'sinatra'
require 'environment'
include ApplicationHelpers

get '/' do
  response.headers['Cache-Control'] = 'public, max-age=1000'
  haml(:index, :format => :html5)
end

get '/lookup/:domain' do |domain|
  response.headers['Cache-Control'] = 'public, max-age=1000'
  @domain = domain.capitalize
  @whois_result = %x{ whois #{domain} }.gsub("\n", "<br />\n")
  haml(:result, :format => :html5)
end