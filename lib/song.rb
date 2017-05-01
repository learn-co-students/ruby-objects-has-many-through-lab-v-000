class Song
#-----------------------------------------------------------------------------
#vars and macros
attr_accessor :name, :artist, :genre
#-----------------------------------------------------------------------------
#instance
def initialize (name, genre)
@name = name

@genre = genre
genre.songs << self

end

def artist
@artist
end

#-----------------------------------------------------------------------------
#class

end