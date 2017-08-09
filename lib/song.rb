class Song
	attr_accessor :name, :genre, :artist

	def initialize(name, genre)
		@name = name
		@genre = genre
		genre.add_song(self) ##this line is super important
	end

end