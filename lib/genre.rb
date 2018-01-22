require 'pry'

class Genre
  attr_accessor :artists
  attr_reader :name

  def initialize(name)
    @name=name
    @songs=[]
  end
  def songs
    @songs
  end
  def songs=(song)
    @song=song
  end

  def add_song(song)
    songs<<song
    song.genre=self
  end

  def artists
    songs.collect do |song|
      song.artist
    end
  end
end