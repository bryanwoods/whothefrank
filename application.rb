require 'rubygems'
require 'sinatra'
require 'environment'
include ApplicationHelpers

get '/' do
  haml(:index, :format => :html5)
end

get '/lookup/:domain' do |domain|
  @domain = domain.capitalize
  @whois_result = %x{ whois #{domain} }.gsub("\n", "<br />")
  haml(:result, :format => :html5)
end