class Artist 

@@all = []

attr_accessor :genrearray, :name, :genre, :songs

def initialize(name)
  @name = name
  @@all << self
  @songs = []
  @genrearray = []
end 


def self.all 
  @@all 
end
  
def new_song(name, genre)
  newsong = Song.new(self, name, genre)
  @songs << newsong
  newsong
end

def songs
  @songs
end

def genres 
  @songs.select do |song|
      if !@genrearray.include? song.genre
      @genrearray << song.genre
    end 
  end
  @genrearray
end


end