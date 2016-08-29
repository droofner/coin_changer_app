
def generate_change(cents)
	change ={}
	
	coin_values ={:dollar =>100,
				 :quarter => 25,
				 :dime => 10,
				 :nickel =>5,
				 :penny => 1}
	coin_values.each do |coin_name, coin_values|
			if cents >= coin_values
				coins = cents /coin_values
	  	   		change[coin_name] = coins
	  	   		cents = cents - (coin_values * coins)
	  	   	end
	end
	
	 change
end 
