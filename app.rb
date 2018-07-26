require 'sinatra/base'
require 'sinatra'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name]).name
    $player_2_name = Player.new(params[:player_2_name]).name
    redirect ('/play')
  end

  get '/play' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    erb(:play)
  end

  get '/attack' do
    @player_1_name = $player_1_name
    @player_2_name = $player_2_name
    erb(:attack)
  end

  # start the server if ruby file is executed directly
  run! if app_file == $0

end
