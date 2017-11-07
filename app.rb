require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @username=params[:name]
    reversed_name=@username.reverse
    "Is your name #{reversed_name}? or #{@username}"
  end

  get "/square/:number" do
    @number=params[:number]
    square_number = @number.to_i*@number.to_i
    "Your number squared is #{square_number}"
  end

  get "say/:number/:phrase" do
    @number2 = params[:number]
    @phrase = params[:phrase]
    i = 0
    while i < @number2.to_i
      "#{@phrase}"
      i+=1
    end
  end
end
