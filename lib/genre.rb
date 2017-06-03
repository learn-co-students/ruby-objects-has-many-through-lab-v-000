class Genre
  attr_accessor :name

  # Genre #new initializes with a name and an empty collection of songs
  # Genre #name has a name
  def initialize(name)
    @name = name
    @songs = []
    @artists = []
  end

  # Genre #songs has many songs
  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  # Genre #artists has many artists, through songs
  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
