class Song
	attr_accessor :genre, :name, :artist

	def initialize(name, genre)
		@name = name
		@artist = artist
		@genre = genre
		genre.add_song(self)
	end

end
