require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    @result = params[:name].reverse 
  "#{@result}"
  end 

  get '/square/:number' do 
    @num_square = params[:number].to_i ** 2
    "#{@num_square}"
  end 

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase] 
    "#{@phrase}" * @num
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get '/:operation/:number1/:number2' do 
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operator == "add"
      result = (@num1 + @num2).to_s
    elsif @operator == "subtract"
      result = (@num1 - @num2).to_s
    elsif @operator == "multiply"
      result = (@num1 * @num2).to_s
    else @operator == "divide"
      result = (@num1 / @num2).to_s
    end 
  end 

end