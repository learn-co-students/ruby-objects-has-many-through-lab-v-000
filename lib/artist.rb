require 'pry'

class Artist
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end


  def new_song(name, genre)
    song = Song.new(name, genre, self)
    @songs << song
    song
  end

  #binding.pry

  def songs
    @songs.select {|song| song.artist}
  end

  def genres
    @songs.collect {|song| song.genre}
  end

end
