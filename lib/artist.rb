require 'pry'
class Artist
  attr_accessor :name
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    #adds a new song to the artist's @songs array
    @songs << song
    #tells that song that it belongs to the artist
    song.artist = self
  end

  def songs
    #has many songs
    @songs
  end

  def genres
    #has many genres, through songs
    self.songs.collect {|song| song.genre}
  end

end
