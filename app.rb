require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
  	new_string = params[:name].reverse
  	"#{new_string}"
  end

  get "/square/:number" do
  	new_number = params[:number].to_i*params[:number].to_i
  	"#{new_number}"
  end

  get "/say/:number/:phrase" do
  	nums = params[:number].to_i
  	str = params[:phrase]
  	new_string = (str * nums)
  	"#{new_string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  	words = params[:word1]+" "+params[:word2]+" "+params[:word3]+" "+params[:word4]+" "+params[:word5]+"."
    "#{words}"
end

  get '/:operation/:number1/:number2' do
  	operate = params[:operation]
  	case operate
  	when "add"
  		operate = "+"
  	when "subtract"
  		operate = "-"
  	when "multiply"
  		operate = "*"
  	when "divide"
  		operate = "/"
  	end
  	num1 = params[:number1]
  	num2 = params[:number2]
  	string1 = num1+operate+num2
  	"#{eval(string1)}"
  end


end