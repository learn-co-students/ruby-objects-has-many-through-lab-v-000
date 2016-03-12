class Artist

	attr_accessor :name, :songs, :genres

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.artist = self
		@songs << song
	end

	def genres
		self.songs.collect do |song|
			song.genre
		end
	end

	def songs
		@songs
	end

end