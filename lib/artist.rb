class Artist
#-----------------------------------------------------------------------------
#vars and macros
attr_accessor :name, :songs
#-----------------------------------------------------------------------------
#instance
def initialize (name)
@name = name
@songs = []
end

def add_song(song)
@songs << song
song.artist = self
end

def genres
artists_genres = []
@songs.each {|song| artists_genres << song.genre}
artists_genres
end


#-----------------------------------------------------------------------------
#class

end
