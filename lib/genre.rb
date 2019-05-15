
class Genre
	@@all = []
	attr_reader :name, :songs, :artists

	def initialize(name)
		@name = name
		@@all << self
		@songs = []
		@artists = []
	end

	def self.all
		@@all
	end

end