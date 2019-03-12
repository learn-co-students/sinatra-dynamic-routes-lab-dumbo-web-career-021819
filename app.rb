require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared = @num * @num
    @squared = @squared.to_s
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @str = ""
    @number.times do
      @str += @phrase
    end
    "#{@str}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = ""
    @str += params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@str}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if @operation == "add"
      @total = params[:number1].to_i + params[:number2].to_i
    elsif @operation == "subtract"
      @total = params[:number1].to_i - params[:number2].to_i
    elsif @operation == "multiply"
      @total = params[:number1].to_i * params[:number2].to_i
    elsif @operation == "divide"
      @total = params[:number1].to_i / params[:number2].to_i
    end
    "#{@total}"
  end

end
