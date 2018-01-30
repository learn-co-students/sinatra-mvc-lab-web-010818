require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    @string = params[:user_phrase]
    pig_latinizer = PigLatinizer.new
    @pig_word = pig_latinizer.to_pig_latin(@string)
    erb :pig_latinized
  end

end
