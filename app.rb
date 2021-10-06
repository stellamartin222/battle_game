require 'sinatra'
require "sinatra/reloader" if development?

class Battle < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
      erb(:index)
  end

  post '/names' do
      session[:player_1_name] = params[:player_1_name]
      session[:player_2_name] = params[:player_2_name]
      redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:play)
  end

  get '/battle' do
    erb(:battle)
  end

  get '/attack' do
    @player_1 = session[:player_1_name]
    @player_2 = session[:player_2_name]
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end