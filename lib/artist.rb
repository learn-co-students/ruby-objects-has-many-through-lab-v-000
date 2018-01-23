class Artist

	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		@songs << song
		#tell song it belongs to this artist
		song.artist = self
	end

	def songs
		@songs
	end

	def genres
		self.songs.collect {|song| song.genre }
	end

end