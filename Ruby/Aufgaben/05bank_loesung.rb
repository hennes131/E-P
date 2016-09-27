class customer
	def initialize(bank_account, lastname, firstname, street, city)
		@bank_account = bank_account
		@lastname = lastname
		@firstname = firstname
		@street = street
		@city = city
	end
	def set_street(street)
		
	end
	def set_lastname(lastname)
		
	end
	def set_firstname(firstname)
		
	end
	def set_bankaccount(bank_account)
		
	end
	def set_city(city)
		
	end
	def print_adress
		puts"Konto:#{@bank_account.right(20, ".")}
		Name:#{@firstname} #{@lastname.right(20, ".")}
		Straße:#{@street.right(20, ".")}
		Ort: #{@city.right(20, ".")}"
	end
end 
obj
puts print_adress