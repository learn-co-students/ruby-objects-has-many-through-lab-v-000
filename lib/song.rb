class Song
	
	attr_accessor :name, :genre, :artist

	def initialize(name, genre)
		@name = name
		@genre = genre
		genre.add_songs(self)
	end

end