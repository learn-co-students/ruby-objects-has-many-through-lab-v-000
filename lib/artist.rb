#~~~ HAVICK WAS HERE~~~

class Artist
attr_accessor :name, :artist

def initialize(name)
	@name = name
	@songs = []
end

def add_song(song)

@songs << song 

song.artist = self

end

def songs
	@songs
end

def genres
	self.songs.collect do |songs|
		songs.genre
	end

end


end