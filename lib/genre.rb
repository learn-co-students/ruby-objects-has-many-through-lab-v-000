class Genre
	attr_accessor :name, :songs, :artists

	def initialize(name)
		@name = name
		@artists = []
		@songs = []
	end

	def add_song(song)
		@songs << song
		song.genre = self
	end

	def songs
		@songs
	end

	def artists
		@songs.collect do |song|
			song.artist
		end
	end

end
