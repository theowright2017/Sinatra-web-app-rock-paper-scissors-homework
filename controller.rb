require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')

require_relative ("models/game.rb")

get '/' do
  erb (:welcome)
end

get '/game/:hand1/:hand2' do
  game = Game.new(params[:hand1], params[:hand2])
  @result = game.winner()
  erb (:result)
end
#game is creating new instance of Game class, which already expects two inputs, of hand1 choice and hand2 choice.... when these are input into the route, the winner method is called on them and the output is given via the embedded result file.
