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
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    attackee = $game.current_player == $game.player_1 ? $game.player_2 : $game.player_1
    $game.attack(attackee)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end