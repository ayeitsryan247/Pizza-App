
require 'colorize'
require 'money'

puts "Welcome to".red
puts "
------------------------------------------------------------------------------------------------------
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
------------------------------------------------------------------------------------------------------
|-|#     #                                                           ######                        |-|
|-|#     #  ####  #      #      #   # #    #  ####   ####  #####     #     # # ###### ######   ##  |-|
|-|#     # #    # #      #       # #  #    # #    # #    # #    #    #     # #     #      #   #  # |-|
|-|####### #    # #      #        #   #    # #    # #    # #    #    ######  #    #      #   #    #|-|
|-|#     # #    # #      #        #   # ## # #    # #    # #    #    #       #   #      #    ######|-|
|-|#     # #    # #      #        #   ##  ## #    # #    # #    #    #       #  #      #     #    #|-|
|-|#     #  ####  ###### ######   #   #    #  ####   ####  #####     #       # ###### ###### #    #|-|
------------------------------------------------------------------------------------------------------
||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
------------------------------------------------------------------------------------------------------".cyan
puts "How many pizzas would you like to order?".red
#Opeinging Text (the first line the user will see)

#Random Pizza Start
def rpizza()
	puts "Here is a random pizza!"
	puts "#{crust}#{meat}#{meat2}#{veg}"
end
#Random Pizza End

#Crust Start
def crust()
	crust = ['thin', 'pan']
	puts "Crust: #{crust.sample}"
end
#Crust End

#meats & Veg start
def meat()
	m1 = ['none', 'bacon', 'ham', 'pepperoni', 'sausage']
	puts "Meat Toppings: #{m1.sample}"
end

def meat2()
	m2 = ['none', 'bacon', 'ham', 'pepperoni', 'sausage']
	puts "2nd Meat Toppings: #{m2.sample}"
end

def veg()
	vegs = ['tomatoe', 'onion', 'peppers', "none"]
	puts "Vegetables Toppings: #{vegs.sample}"
end


response = gets.chomp.to_i


while response > 0 do 
	rpizza() 
	response -= 1
end
	

pizzaprice = 0.00


psize = ["small","medium","large"]

	puts "Please Select your pizza size"
	puts""
	puts"
	|=======|  |========|  |=======|
	|1.Small|  |2.Medium|  |3.Large|
	|=======|  |========|  |=======|
	  $10         $15        $20
	".cyan
	response = gets.chomp
	
	if response == "1"
		sprice = 10.00
		pizzaprice = pizzaprice + sprice
	elsif response == "2"
		sprice = 15.00
		pizzaprice = pizzaprice + sprice
	elsif response == "3"
		sprice = 20.00
		pizzaprice = pizzaprice + sprice
	else
		sprice = 0.00
	end


	puts "Would you like any of these "
	puts""
	puts"
	|=======|  |========|  |===========|
	|1.Bacon|  |2.Cheese|  |3.Pepperoni|
	|=======|  |========|  |===========|
	  +$0.99     +$0.75       +$0.75
	" .cyan

	response = gets.chomp
	
topprice = 0.00

case response.downcase
when "1"
	topprice + topprice = 0.99
	puts "Added bacon"
	puts""
when "2"
	topprice + topprice = 0.75
	puts "Added extra cheese"
	puts""
when "3"
	topprice + topprice = 0.75
	puts "Added extra Pepperoni"
	puts""
else
	puts "Sorry we cant give you extra of that item!"
end


	puts "Would you like any of these "
	puts""
	puts"
 
        
                    WINGS           
	===============================
	|==========|  |======|  |=====|
	|1.Original|  |2.Mild|  |3.Hot|
	|==========|  |======|  |=====|
	  +$4.25       +$4.50    $4.50
	" .cyan

	response = gets.chomp
	
wingprice = 0.00
	
case response.downcase
when "1"
	wingprice + wingprice = 0.99
	puts "Added Original Wings"
	puts""
when "2"
	wingprice + wingprice = 0.75
	puts "Added Mild Wings"
	puts""
when "3"
	wingprice + wingprice = 0.75
	puts "Added Hot Wings"
	puts""
else
	puts "Sorry we cant do that."
end

	puts "Would you like any of these drinks? "
	puts""
	puts"
 
        
                    Drinks           
	=================================
	|=======|  |=======|  |=========|
	|1.Water|  |2.Pepsi|  |3.Mtn Dew|
	|=======|  |=======|  |=========|
	 +$1.25     +$3.00       $3.00
	" .cyan

	response = gets.chomp
	
drinkprice = 0.00
	
case response.downcase
when "1"
	drinkprice + drinkprice = 1.25
	puts "Added Drinking Water"
	puts""
when "2"
	drinkprice + drinkprice = 3.00
	puts "Added Pepsi"
when "3"
	drinkprice + drinkprice = 3.00
	puts "Added Mtn Dew"
	puts""
else
	puts "Sorry we cant do that."
end

puts "Would you like your order to be delivered? "
	puts""
	puts"

	|=========================| |========================| |=========|
	|1-Delivery Under 50 Miles| |2.Delivery over 50 miles| |3-Pick-Up|
	|=========================| |========================| |=========|
	        +$5.00                     +$15.00                +$0.00     
	".cyan

	response = gets.chomp
	
Delivprice = 0.00	
case response.downcase
when "1"
	Delivprice + Delivprice = 5.00
	puts "You live under 50 miles to us. Your delivery will arrive soon."
	puts""
when "2"
	topprice + topprice = 15.00
	puts "Your order will be delivered to you it will take a little longer."
	puts""
when "3"
	topprice + topprice = 0.00
	puts "You can pickup your order at our retail location."
	puts""
else
	puts "Please contact us there was an issue"
end





total_p = pizzaprice + topprice + Delivprice + wingprice + drinkprice

puts "Your total price is $#{total_p}"
