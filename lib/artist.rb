class Artist
	attr_accessor :name

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end

	def add_song(song)
		song.artist = self
		self.songs << song
	end

	def genres
		self.songs.collect { |song| song.genre }
	end
end