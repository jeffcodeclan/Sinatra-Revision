require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/word_formatter.rb'
require 'json'

get '/' do
  @person = {
    name: 'Jeff Lloyd',
    age: 99,
    nationality: 'British',
  }
   erb :person
end

get '/address' do
  content_type :json
  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODECLAN',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
#   word_formatter = word_formatter.new(address)
#   word_formatter.to.uppercase(address[:postcode])
  return address.to_json
end

