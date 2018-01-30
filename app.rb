require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    pig_instance = PigLatinizer.new
    @string = pig_instance.to_pig_latin(params[:user_phrase])

    erb :results
  end


end
