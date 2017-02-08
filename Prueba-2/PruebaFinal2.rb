#PENDIENTE CON LA 3 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1

class T
	def method1()
		puts "Item 1 -Método de instancia-: metodo1. Se agrega new: T.new.method1"
	end
end
T.new.method1


class T
	def self.method1()
		puts "Item 2 -Método de clase-: metodo1. Se agrega self: def self.method1()"
	end
end
T.method1


module PruebaMayor
	A = 5
	def A
		A
	end
end
prueba = PruebaMayor::A
puts "Item 3: #{prueba}" 


class Complejo
	attr_accessor :x, :y
	def initialize(x, y)
		@x = x
		@y = y
	end

	def +(complejo)
		com = Complejo.new(@x + complejo.x, @y + complejo.y)
		puts "Item 4: #{com} se agregó attr_accessor"
	end
end

class T
	def method1
		rand(0..20)
	end
end

class Q < T
	attr_accessor :dev
	def initialize()
		@dev = T.new.method1
		return @dev
	end
end

claseQ = Q.new.dev
puts "Item 5: #{claseQ}"


module Priceable
	attr_accessor :price
	def discoutend_price(discount)
		@price - @price * discount
	end
end

module Stockable
	attr_accessor :stock
	def has_stock?(stock)
		if stock > 0 
			true
		else
			false
		end
	end
end

class Product
	include Priceable
	def initialize(price)
		@price = price
	end
end

