require 'sinatra'
require "sinatra/reloader" if development?
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(
    Player.new(params[:player_1_name]), 
    Player.new(params[:player_2_name])
    )
    redirect '/play'
  end

  get '/play' do
    redirect "/end" if $game.current_player.is_dead? 
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @current_player = @game.current_player
    @current_opponent = @game.current_opponent
    $game.attack(@game.current_opponent)
    erb(:attack)
  end

  get '/end' do
    @dead_player = $game.current_player
    erb(:end)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end