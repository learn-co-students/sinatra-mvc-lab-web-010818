require_relative 'config/environment'

class App < Sinatra::Base


get "/" do

  erb :user_input


end
 post "/piglatinize" do

   word = params[:user_phrase]

   instance = PigLatinizer.new
   @string = instance.to_pig_latin(word)






 end




end
