require 'sinatra'
require_relative 'models/game'

get '/:move1/:move2' do
  @result = Game.play(params[:move1], params[:move2])
  erb(:play)
end

get '/rules' do
  erb(:rules)
end
