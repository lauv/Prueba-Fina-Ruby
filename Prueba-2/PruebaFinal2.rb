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