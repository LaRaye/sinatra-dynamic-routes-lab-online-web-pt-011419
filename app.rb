require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse.to_s
  end 

  get '/square/:number' do 
    @number = params[:number]
    "#{@number.to_i**2}"
  end 

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    erb :say 
    #binding.pry
  end 
end