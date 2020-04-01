require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatin' do
        @output = PigLatinizer.new(params[:string])
        
        erb :piglatin
    end

end