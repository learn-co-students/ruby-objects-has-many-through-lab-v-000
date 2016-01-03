class Genre
	attr_accessor :name
	def initialize(name)
		@name = name
		@songs = []
	end
	def songs
		@songs
	end
	def artists
		@artists = @songs.collect { |x| x.artist }.uniq
		@artists
	end
end