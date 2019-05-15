class Song
	@@all = []
	attr_accessor :name, :artist, :genre

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@genre.artists << @artist
		@@all << self
		@genre.songs << self
	end

	def self.all
		@@all
	end
end