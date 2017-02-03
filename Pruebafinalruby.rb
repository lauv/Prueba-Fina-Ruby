require 'csv'
opcion = 0
while opcion.to_i != 4
	puts "*********************************"
	puts "Menu\n"
	puts "Ingrese una opción"
	puts "1- Generar archivo individual"
	puts "2- Consultar inasistencias totales"
	puts "3- Consultar alumnos aprobados"
	puts "4- Salir"

	opcion = gets.chomp
	
	case opcion.to_i
# 		Si el usuario ingresa la opción 1, se debe generar un archivo con el nombre de cada alumno y el promedio de sus notas.
		when 1
		
			CSV.foreach('sample.csv', converters: :numeric) do |row|
				nombre = row[0]
				suma = 0
				row.each{|elemento|suma += elemento if elemento.to_i > 0 and elemento.to_i < 11}
				promedio = suma / 5
				salida = nombre + " " + promedio.to_s 
				File.open(nombre, 'w'){ |file| file.puts(salida)}
			end
				
				
				
		when 2
			CSV.foreach('sample.csv') do |row|
				c = 0
					
				row.each do |elemento|
					if elemento.inspect == " A"
						c += 1
					end
				end
			
				puts "Hubo #{c} inasistencias"
			end
		when 3
			def aprobado(nombre, nota)
				if nota >= 5
					puts "#{nombre} esta aprobado"
				else 
					puts "#{nombre} esta reprobado"
				end
			end

			CSV.foreach('sample.csv') do |row|
				nombre = row[0]
				suma = 0
				row.each{|elemento|suma += elemento if elemento.to_i > 0 and elemento.to_i < 11}
				promedio = suma / 5
				aprobado(nombre, nota)
			end
		when 4
			break	
			
		else
			puts "Opcion inválida"
	end
end