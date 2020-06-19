require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    erb :reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    erb :square
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    erb :repeat
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    erb :concat
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    answer = "So"

    case params[:operation]
    when "add"
      answer = (@num1 + @num2).to_s
    when "subtract"
      answer = (@num1 - @num2).to_s
    when "multiply"
      answer = (@num1 * @num2).to_s
    when "divide"
      answer = (@num1 / @num2).to_s
    end
  end
end
