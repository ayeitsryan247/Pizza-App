
require 'colorize'
require 'money'

puts "Welcome to".red
puts "
------------------------------------------------------------------------------------------------------
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
------------------------------------------------------------------------------------------------------
|-|■     ■                                                           ■■■■■■                        |-|
|-|■     ■  ■■■■  ■      ■      ■   ■ ■    ■  ■■■■   ■■■■  ■■■■■     ■     ■ ■ ■■■■■■ ■■■■■■   ■■  |-|
|-|■     ■ ■    ■ ■      ■       ■ ■  ■    ■ ■    ■ ■    ■ ■    ■    ■     ■ ■     ■      ■   ■  ■ |-|
|-|■■■■■■■ ■    ■ ■      ■        ■   ■    ■ ■    ■ ■    ■ ■    ■    ■■■■■■  ■    ■      ■   ■    ■|-|
|-|■     ■ ■    ■ ■      ■        ■   ■ ■■ ■ ■    ■ ■    ■ ■    ■    ■       ■   ■      ■    ■■■■■■|-|
|-|■     ■ ■    ■ ■      ■        ■   ■■  ■■ ■    ■ ■    ■ ■    ■    ■       ■  ■      ■     ■    ■|-|
|-|■     ■  ■■■■  ■■■■■■ ■■■■■■   ■   ■    ■  ■■■■   ■■■■  ■■■■■     ■       ■ ■■■■■■ ■■■■■■ ■    ■|-|
------------------------------------------------------------------------------------------------------
■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
------------------------------------------------------------------------------------------------------
".cyan
puts "How many pizzas would you like to order?".red
#Opeinging Text (the first line the user will see)

#Random Pizza Start
#def rpizza()
#	puts "Here is a random pizza!"
#	puts "#{crust}#{meat}#{meat2}#{veg}"
#end
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
pizzaprice = 0.00


psize = ["small","medium","large"]

	puts "Please Select your pizza Size"
	puts""
	puts"
	■■■■■■■■■  ■■■■■■■■■■  ■■■■■■■■■   
	|1.Small|  |2.Medium|  |3.Large|
	■■■■■■■■■  ■■■■■■■■■■  ■■■■■■■■■
	  $10         $15        $20

	".cyan
	response = gets.chomp
	
	if response == "1"
		sprice = 10.00
		puts "Small Pizza Size added your current order price is : $#{sprice}"
		pizzaprice = pizzaprice + sprice
	elsif response == "2"
		sprice = 15.00
		puts "Medium Pizza Size added your current order price is : $#{sprice}"
		pizzaprice = pizzaprice + sprice
	elsif response == "3"
		sprice = 20.00
		puts "Large Pizza Size added your current order price is : $#{sprice}"
		pizzaprice = pizzaprice + sprice
	else
		sprice = 0.00
		puts "Invalid selection you will NOT be charged"
		exit
	end


	puts "Would you like any Toppings "
	puts""
	puts"

	           
	■■■■■■■■■  ■■■■■■■■■■  ■■■■■■■■■■■■■
	|1.Bacon|  |2.Cheese|  |3.Pepperoni|
	■■■■■■■■■  ■■■■■■■■■■  ■■■■■■■■■■■■■
	  +$0.99     +$0.75       +$0.75

	" .cyan

	response = gets.chomp
	
topprice = 0.00

case response.downcase
when "1"
	topprice + topprice = 0.99
	puts "Bacon added your current order price is : $#{sprice + topprice}"
	puts""
when "2"
	topprice + topprice = 0.75
	puts "Cheese added your current order price is : $#{sprice + topprice}"
	puts""
when "3"
	topprice + topprice = 0.75
	puts "Pepperoni added your current order price is : $#{sprice + topprice}"
	puts""
else
	puts "Sorry we cant give you extra of that item!"
end


	puts "Would you like any Wings? "
	puts""
	puts"
 
        
                    

	  ■■■■■■■■■■■■  ■■■■■■■■  ■■■■■■■
	  |1.Original|  |2.Mild|  |3.Hot|
	  ■■■■■■■■■■■■  ■■■■■■■■  ■■■■■■■
	    +$4.25       +$4.25    $4.25
	" .cyan

	response = gets.chomp
	
wingprice = 0.00
	
case response.downcase
when "1"
	wingprice + wingprice = 4.25
	puts "Original wings added your current order price is : $#{sprice + topprice + wingprice.round(2)}"
	puts""
when "2"
	wingprice + wingprice = 4.25
	puts "Mild wings added your current order price is : $#{sprice + topprice + wingprice.round(2)}"
	puts""
when "3"
	wingprice + wingprice = 4.25
	puts "Hot wings added your current order price is : $#{sprice + topprice + wingprice.round(2)}"
	puts""
else
	puts "Sorry we cant do that."
end

	puts "Would you like any  drinks? "
	puts""
	puts"
 
        
                              
	 ■■■■■■■■■  ■■■■■■■■■  ■■■■■■■■■■■ ■■■■■■
	 |1.Water|  |2.Pepsi|  |3.Mtn Dew| |4.No|
	 ■■■■■■■■■  ■■■■■■■■■  ■■■■■■■■■■■ ■■■■■■
	  +$1.25     +$1.25      $1.25     $0.00
	" .cyan

	response = gets.chomp
	
drinkprice = 0.00
	
case response.downcase
when "1"
	drinkprice + drinkprice = 1.25
	puts "Water added your current order price is : $#{sprice + topprice + wingprice + drinkprice.round(2)}"
	puts""
when "2"
	drinkprice + drinkprice = 1.25
	puts "Pepsi added your current order price is : $#{sprice + topprice + wingprice + drinkprice.round(2)}"
when "3"
	drinkprice + drinkprice = 1.25
	puts "Mtn Dew added your current order price is : $#{sprice + topprice + wingprice + drinkprice}"
	puts""
when "4"
	drinkprice + drinkprice = 0.00
	puts "No drinks added your current order price is : $#{sprice + topprice + wingprice + drinkprice}"
	puts""
else
	puts "Sorry we cant do that."
end

puts "Would you like your order to be delivered? "
	puts""
	puts"

	■■■■■■■■■■■■■■■■■■■■■■■■■■■ ■■■■■■■■■■■■■■■■■■■■■■■■■■ ■■■■■■■■■■■
	|1-Delivery Under 50 Miles| |2.Delivery over 50 miles| |3-Pick-Up|
	■■■■■■■■■■■■■■■■■■■■■■■■■■■ ■■■■■■■■■■■■■■■■■■■■■■■■■■ ■■■■■■■■■■■
	        +$5.00                     +$15.00                +$0.00     
	".cyan

	response = gets.chomp
	
Delivprice = 0.00	
case response.downcase
when "1"
	Delivprice + Delivprice = 5.00
	puts "Under 50 miles added your current order price is : $#{sprice + topprice + wingprice + drinkprice + Delivprice}"
	puts""
when "2"
	topprice + topprice = 15.00
	puts "Over 50 miles added your current order price is : $#{sprice + topprice + wingprice + drinkprice + Delivprice}"
	puts""
when "3"
	topprice + topprice = 0.00
	puts "Pick-Up added your current order price is : $#{sprice + topprice + wingprice + drinkprice + Delivprice}"
	puts""
else
	puts "Please contact us there was an issue"
end



total_p = pizzaprice + topprice + Delivprice + wingprice + drinkprice
total_p *= 1.06

puts "Your total price is $#{total_p.round(2)}"
