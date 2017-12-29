require 'pry'

class Genre

  attr_accessor :songs, :name


  def initialize(name)
    # initializes with a name and an empty collection of songs
    @name = name
    @songs = []
  end

  def add_song(song)
    # adds new songs to the @songs array
    @songs << song
  end

  def artists
    # has many artist, through songs
    self.songs.map { |song| song.artist }
  end

end
