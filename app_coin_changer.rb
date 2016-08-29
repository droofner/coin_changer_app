require "sinatra"
require_relative "get_coin_changer_homework_1"

get "/" do
erb :coin_changer_input
end

post "/change" do
	coin_value = params[:coin_value].to_i
	change = generate_change(coin_value) 
	"Your change is #{change}"
end