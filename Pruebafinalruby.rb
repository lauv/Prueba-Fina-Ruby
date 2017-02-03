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
		
			CSV.foreach('sample.csv', converters: :numeric) do |row|
				nombre = row[0]
				suma = 0
				row.each{|elemento|suma += elemento if elemento.to_i > 0 and elemento.to_i < 11}
				promedio = suma / 5
				File.open(nombre, 'w'){ |file| file.puts(promedio)}
			end
				
				
				
		when 2
			CSV.foreach('sample.csv') do |row|
				c = 0
				row.each do |elemento|

						puts elemento
					if elemento == 'A'
						c += 1
					end
				end
			
				puts "Hubo #{c} inasistencias"
			end

		when 4
			break	
			
		else
			puts "Opcion inválida"
	end
end