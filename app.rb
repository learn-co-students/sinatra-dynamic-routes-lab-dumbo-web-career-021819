require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse!
  end

  get '/square/:number' do
    @user_num = params[:number].to_i
    answer = @user_num ** 2
    return answer.to_s
  end

  get '/say/:number/:phrase' do
    @user_num = params[:number].to_i
    @user_phrase = params[:phrase]
    return_value = ""

    @user_num.times do
      return_value += @user_phrase
    end
    return return_value
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    return "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]

    if @operation == 'add'
      answer = (@num1 + @num2).to_s
    elsif @operation == 'subtract'
      answer = (@num1 - @num2).to_s
    elsif @operation == 'multiply'
      answer = (@num1 * @num2).to_s
    elsif @operation == 'divide'
      answer = (@num1 / @num2).to_s
    end
  end

end
