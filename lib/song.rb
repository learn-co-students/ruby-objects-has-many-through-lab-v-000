class Song

	attr_accessor :name, :genre, :artist

	def initialize(name, genre)
		@name = name
		@genre = genre
		genre.add_song(self)
	end



end

# learn spec/02_song_spec.rb