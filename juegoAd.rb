def mensaje(numJuego,numJugador)
	if numJuego < numJugador
		puts "Muy alto, adivina otra vez"

	elsif numJuego > numJugador
			puts "Muy bajo, adivina otra vez"
	end
end

def otraVez
	puts "Jugar nuevamente\n1.Si\n2.No"
	x = gets.chomp.to_i

	if x == 1
		puts "Genial, comenzemos otra vez"
		return true
	elsif x == 2
		puts "Vale, gracias por jugar"
		return false
	end	
end

puts "Hola, pon tu nombre y empecemos a jugar"
nombreJugador = gets.chomp
puts "Esta bien #{nombreJugador}, comencemos a jugar"
control = true

while control
	intentos = 0
	numeroJuego = rand(0...100)

	puts "He escogido un numero entre 0 y 100, adivinalo"

	while control
		numeroJugador = gets.chomp.to_i
		mensaje(numeroJuego, numeroJugador)
		puts numeroJuego
		intentos +=1
		if numeroJugador == numeroJuego
			break
		end
	end
	puts "Has ganado #{nombreJugador}, numero de intentos #{intentos}"
	control = otraVez	
end