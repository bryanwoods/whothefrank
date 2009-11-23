require 'rubygems'
require 'sinatra'
require 'haml'

get '/' do
  haml(:index)
end

get '/lookup/:domain' do |domain|
  %x{ whois #{domain} }.gsub("\n", "<br />")
end