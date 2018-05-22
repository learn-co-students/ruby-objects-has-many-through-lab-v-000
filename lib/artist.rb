class Artist
  attr_accessor :name, :songs

  def initialize(name)
    #initializes with a name and an empty collection of songs
    @name = name 
    @songs = []
  end

  def add_song(song)
    self.songs << song #adds a new song to the artist's @songs array
    song.artist = self #tells that song that it belongs to the artist
  end

  #has many genres, through songs
  def genres
    self.songs.collect {|x| x.genre}
  end
end