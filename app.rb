require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!


  get "/reversename/:name" do
    @user_name = params[:name]

    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    x = params[:number].to_i
    square = x * x
    "#{square}"
  end

  get "/say/:number/:phrase" do
    x = params[:number].to_i
    y = params[:phrase]
    "#{y}" * x

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    a = params[:word1]
    b = params[:word2]
    c = params[:word3]
    d = params[:word4]
    e = params[:word5]
    "#{a} #{b} #{c} #{d} #{e}."



  end

  get "/:operation/:number1/:number2" do
    a = params[:number1].to_i
    b = params[:number2].to_i

   sum = a + b
    "#{sum}"
    answer = a - b
    "#{answer}"

  end


end
