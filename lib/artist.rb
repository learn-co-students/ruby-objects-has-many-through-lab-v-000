class Artist

	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist= self
		@songs << song
	end

	def genres
		@songs.map{|s| s.genre}
	end

end