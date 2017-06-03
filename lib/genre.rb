require 'pry'
class Genre
	attr_accessor :name, :songs
	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		song.genre = self
		@songs << song
		@songs
	end

	def artists
		songs.map do |song|
			song.artist 
		end
	end


end

# Now you can use the Genre#add_song method in the Song class' initialize method to tell the genre that it owns the given song.