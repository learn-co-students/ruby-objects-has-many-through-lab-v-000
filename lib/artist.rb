class Artist
  attr_accessor :name

#an artist is initialized with a name and an empty @songs array
  def initialize(name)
    @name = name
    @songs = []
  end

#the artist class needs an instance method, the #add_song that takes in an argument of a song and adds the song to the artist collection of songs. The #add_song method should also tell the song that belongs to the artist.
def add_song(song)
  @songs << song
  song.artist = self
end

#returns the songs array
def songs
  @songs
end

#iterates over that artist's songs and collects the genre of each song
def genres
  self.songs.collect {|song| song.genre}
end



end
