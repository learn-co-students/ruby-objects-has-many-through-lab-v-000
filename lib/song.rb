class Song
	attr_accessor :name, :genre, :artist

	def initialize(name, genre="none")
		@name = name
		@genre = genre
		genre.add_song(self)
	end
end