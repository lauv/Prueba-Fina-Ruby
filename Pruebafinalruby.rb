require 'csv'
opcion = 0
while opcion.to_i != 4
	puts "*********************************"
	puts "Menu\n"
	puts "Ingrese una opción"
	puts "1- Generar archivo individual"
	puts "2- Consultar stock total"
	puts "3- Consultar item de mayor stock"
	puts "4- Consultar existencia de articulo"
	puts "5- Para salir del sistema"

	opcion = gets.chomp
	
	case opcion.to_i
# 		Si el usuario ingresa la opción 1, se debe generar un archivo con el nombre de cada alumno y el promedio de sus notas.
		when 1
			# array = CSV.read("sample.csv")
			# array.each do |elemento|
			# 	puts elemento[0]
			# end

			CSV.foreach('sample.csv', converters: :numeric) do |row|
				nombre = row[0]
				puts nombre
				nota1 = row[1]
				nota2 = row[2]
				nota3 = row[3]
				nota4 = row[4]
				nota5 = row[5]
				promedio = (nota1 + nota2 + nota3 + nota4 + nota5) / 5
				puts promedio

				# File.open(nombre, 'w'){ |file| file.puts(row.inspect)}
			end
		when 2
			

		when 3
			

		when 4
			break	
			
		else
			puts "Opcion inválida"
	end
end