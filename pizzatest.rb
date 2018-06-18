
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
	|-------|  |--------|  |-------|
	|1.Small|  |2.Medium|  |3.Large|
	|-------|  |--------|  |-------|
	  $10         $15        $20
	"
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
	|-------|  |--------|  |-----------|
	|1.Bacon|  |2.Cheese|  |3.Pepperoni|
	|-------|  |--------|  |-----------|
	  +$0.99     +$0.75       +$0.75
	"

	response = gets.chomp
	
topprice = 0.00	
case response.downcase
when "1"
	topprice + topprice = 0.99
	puts "Added extra bacon"
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

puts "Would you like your order to be delivered? "
	puts""
	puts"

	|----------|  |---------| 
	|Y-Delivery|  |N-Pick-Up|
	|----------|  |---------|  
	  +$5.00        +$0.00     
	"

	response = gets.chomp
	
Delivprice = 0.00	
case response.downcase
when "n"
	Delivprice + Delivprice = 0.00
	puts "You make pickup your order at our retail location"
	puts""
when "y"
	topprice + topprice = 5.00
	puts "Your order will be delivered to you."
	puts""
else
	puts "Please contact us there was an issue"
end

total_p = pizzaprice + topprice + Delivprice

puts "Your total price is $#{total_p}0"
