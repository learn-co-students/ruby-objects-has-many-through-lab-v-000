class Genre
	attr_accessor :song, :songs, :name

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		
	end

	def songs
		@songs
	end

	def artists
		@songs.collect {|song| song.artist}
	end
end