class Song

	attr_accessor :name, :genre, :artist
	
	def initialize(name, genre_obj)
		@name = name
		@genre = genre_obj
		genre_obj.add_song(self)
	end

end