require 'pry'
class Genre

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def artists
    @songs.collect do |song|
      # establishes the has_many relationship of genres and artists.  
      # collecting the artists that belong to the genre through the songs.
      song.artist
    end
  end



end
