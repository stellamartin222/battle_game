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
    $game = Game.new
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  get '/battle' do
    erb(:battle)
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $game.attack($player_2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end