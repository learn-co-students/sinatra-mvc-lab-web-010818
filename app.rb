require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_input = params["user_phrase"]

    pig_latin_instance = PigLatinizer.new
    @final_string = pig_latin_instance.to_pig_latin(@user_input)
    erb :piglatinize

    # redirect "/piglatinize/#{@final_string}"
  end


  # get '/piglatinize/:final_string' do
  #   @final_string = params[:final_string]
  #
  #   erb :piglatinize
  # end

#what happens with: [30/Jan/2018:10:40:34 -0500] "GET /?user_input=words HTTP/1.1" 200 289 0.0159



end
