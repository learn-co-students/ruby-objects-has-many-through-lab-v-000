class Genre
	attr_accessor :name
	attr_accessor :songs
	attr_accessor :artists

	def initialize(name)
		@name = name
		@songs = []
		@artists = []
	end

	def artists
		@songs.map {|song| song.artist}
	end
end
