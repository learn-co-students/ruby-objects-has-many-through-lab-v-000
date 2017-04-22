class Genre

	attr_accessor :name

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs
		@songs
	end


#The Genre class needs an instance method, #add_song, that takes in an argument of a song
# and adds that song to the genre's collection of songs.
# Now you can use the Genre#add_song method in the Song class' initialize method
# to tell the genre that it owns the given song.
	def add_song(song)
		@songs << song
	end

	def artists
		@songs.map do |song|
			song.artist
		end
	end

end
