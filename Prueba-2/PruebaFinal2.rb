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
	class Prueba
		@@A = 5
		def self.A
			@@A
		end
	end
end
prueba = PruebaMayor::Prueba.new
puts "Item 3: #{prueba}" 


class Complejo
	attr_accessor :x, :y
	def initialize(x, y)
		@x = x
		@y = y
	end

	def +(complejo)
		puts Complejo.new(@x + complejo.x, @y + complejo.y)
	end
end


class T
	def method1
		rand(0..20)
	end
end

class Q < T
	def initialize()
		dev = T.new.method1
	end
end

claseQ = Q.new.dev
puts "Item 5: #{claseQ}"