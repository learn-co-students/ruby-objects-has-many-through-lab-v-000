class Genre
#-----------------------------------------------------------------------------
#vars and macros
attr_accessor :name, :songs
#-----------------------------------------------------------------------------
#instance
def initialize (name)
@name = name
@songs = []
end

def artists
artist_array = []
@songs.each{|song|artist_array << song.artist }
artist_array
end



#-----------------------------------------------------------------------------
#class

end