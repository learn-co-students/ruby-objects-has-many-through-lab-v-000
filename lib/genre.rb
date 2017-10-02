require 'pry'

class Genre

  attr_reader :name, :song, :artist

  def initialize(name)
    @name = name
    @songs = []
  end

  # def add_song(song)
  #   binding.pry
  #   @songs << song
  #
  # end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end
end
