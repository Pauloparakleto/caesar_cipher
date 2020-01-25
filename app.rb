require 'sinatra'
if development? require 'sinatra/reloader'  #Heroku not to use it.
require './lib/caesar_cipher'

get '/' do
    word = params['word']
    number = params['number'].to_i
    code = caesar_cipher(word, number)

    erb :index, :locals => {:word => word, :number => number, :code => code}

end

#puts cript.caesar_cipher("What a string!", 5) == "Bmfy f xywnsl!"