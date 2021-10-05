require 'sinatra'
require "sinatra/reloader" if development?

get '/battle' do
    "Hello Battle"
end