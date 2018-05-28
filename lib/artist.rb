class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    
    @@all << self
  end

  def new_song(song_name, genre)
    new_song = Song.new(song_name)

    new_song.artist = self
    new_song.genre = genre

    @songs << new_song
    @genres << genre

    new_song
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end
end
