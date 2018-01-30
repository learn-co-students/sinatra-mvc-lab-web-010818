require_relative 'config/environment'

class App < Sinatra::Base
  set :views, './views'

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    user_input = params[:user_phrase]
    pigLatinizer = PigLatinizer.new
    @piglatinized_str = pigLatinizer.to_pig_latin(user_input)

    erb :piglatinize
  end
end
