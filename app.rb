require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end
  post "/piglatinize" do
    status_code = 200
    @user_input = params[:user_phrase]
    @new_instance = PigLatinizer.new
    @piglatinized_phrase = @new_instance.to_pig_latin(@user_input)
    erb :pig_latinizer
  end
end
