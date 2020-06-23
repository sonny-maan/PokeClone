require 'sinatra/base'

class PokeBattle < Sinatra::Base

  get '/' do
    @name = ["tom", "jerry"].sample
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

