require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base
    configure :development do
      register Sinatra::Reloader
    end
  
    get '/' do
      'Testing infrastucture'
    end
  
    # start the server if ruby file executed directly
    run! if app_file == $0
  end