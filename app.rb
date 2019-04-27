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
    
    erb :say_phrase
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    erb :say_words
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
  
    erb :operate
  end 
end