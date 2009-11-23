require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml(:index)
end

get '/lookup/:domain' do |domain|
  @whois_result = %x{ whois #{domain} }.gsub("\n", "<br />")
  haml(:result)
end