#aus vorbereitung_kla.txt aufgaben 1-6
class Car

	#Aufgabe 1
	attr_accessor :ps, :typ, :verbrauch

	#erweiterte Aufgabe 1 Lösung
	#	attr_accessor :ps :verbrauch
	#   attr_reader :typ
	#   def typ=(typ)
	#		@typ = typ.to_s.capitalize
	#   end
	
	#2te erweiterte Aufgabe 1 Lösung
	#	attr_accessor :ps :verbrauch
	#   attr_reader :typ
	#   def typ=(typ)
	#		if typ.is_a?(String) && typ.size >= 3
	#			@typ = typ.capitalize 
	#		else
	#			puts "war kein string"
	#		end
	#   end

	#3te erweiterte Aufgabe 1 Lösung
	#	attr_accessor  :verbrauch
	#   attr_reader :typ, :ps
	#	def ps=(ps)
	#		@ps = ps if ps > 0 
	#	end
	#   def typ=(typ)
	#		if typ.is_a?(String) && typ.size >= 3
	#			@typ = typ.capitalize 
	#		else
	#			puts "war kein string"
	#		end
	#   end
	#Ende aufgabe 1
	#Aufgabe 2
	def beschleunigen(zeit)
		speed = @ps*zeit/100

		puts "Das Fahrzeug hat #{convert_to_kmh(speed)} km/h erreicht"
	end

	private
		def convert_to_kmh(var)
			var * 3.6
		end
	#Ende aufgabe 2
end

#für vererbung.txt als übung 
class Lkw < Car

end
obj2 = Lkw.new
obj2.typ = 1
obj2.ps = 50
obj2.beschleunigen(2)

#Ende für vererbung.txt als übung 

#Ausgaben für aufgabe 2
obj = Car.new
obj.typ = 1
obj.ps = 50
obj.beschleunigen(2)