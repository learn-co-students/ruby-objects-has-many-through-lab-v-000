class Song
	attr_accessor :artist
	attr_accessor :title
	attr_accessor :genre

	def initialize(title, genre)
		@title = title
		@genre = genre
		@genre.songs << self
	end
end
