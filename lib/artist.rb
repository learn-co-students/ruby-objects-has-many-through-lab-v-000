class Artist
  attr_accessor :name
  #songs belong to artist
  #has many songs
  #has many genres through its songs

  #initialized with a name and an empty @songs array
  def initialize(name)
    @name = name
    @songs = []
  end

  #add_song takes in an argument of a songs
  #adds that song to the artists collection of songs.
  #tell the song that it belongs to the artist.
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # #songs returns the @song array
  def songs
    @songs
  end

  # #genres iterates over that artist's songs and collects the genre of each songs
  def genres
    self.songs.collect {|song| song.genre}
  end
end
