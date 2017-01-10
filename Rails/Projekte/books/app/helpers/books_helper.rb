module BooksHelper
	def mittel(book)
		i=0
		book.likes.each do |f|
			i=i+f.quality
		end
		e=i/book.likes.count
		
	end
end
