require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_one = params[:word1]
    @word_two = params[:word2]
    @word_three = params[:word3]
    @word_four = params[:word4]
    @word_five = params[:word5]
    "#{@word_one} #{@word_two} #{@word_three} #{@word_four} #{@word_five}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i
    if @operation == "add"
      (@num_one + @num_two).to_s
    elsif @operation == "subtract"
      (@num_one - @num_two).to_s
    elsif @operation == "multiply"
      (@num_one * @num_two).to_s
    elsif @operation == "divide"
      (@num_one / @num_two).to_s
    end
  end

end
