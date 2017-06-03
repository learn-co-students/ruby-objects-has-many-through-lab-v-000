class Artist
  attr_accessor :name

  # Artist #new initializes with a name and an empty collection of songs
  # Artist #name has a name
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  # Artist #add_song adds a new song to the artist's @songs array and tells that song that it belongs to the artist
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # Artist #songs has many songs
  def songs
    @songs
  end

  # Artist #genres has many genres, through songs
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
