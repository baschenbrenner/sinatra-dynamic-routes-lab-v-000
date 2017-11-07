require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @username=params[:name]
    reversed_name=@username.reverse
    "Is your name #{reversed_name}? or #{@username}"
  end


end
