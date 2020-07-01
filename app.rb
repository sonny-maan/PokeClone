require 'sinatra/base'

class PokeBattle < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:play)
  end
  
  get '/attack' do
  @player1 = session[:player1]
  @player2 = session[:player2]
  erb :attack
  end

  run! if app_file == $PROGRAM_NAME
end
