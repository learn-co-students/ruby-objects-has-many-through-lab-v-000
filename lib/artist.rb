class Artist
	@@all = []
	attr_accessor :name, :genres, :songs

	def initialize(name)
		@name = name
		@@all << self
		@genres = []
		@songs = []
	end

	def self.all
		@@all
	end

	def new_song(name, genre)
		new = Song.new(name, self, genre)
		Song.all << new
		@songs << new
		@genres << genre
		new
	end

end 