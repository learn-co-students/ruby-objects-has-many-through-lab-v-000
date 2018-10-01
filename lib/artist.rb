require 'pry'

class Artist

  attr_accessor :name
  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

 def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    song_arr = Array.new
    self.songs.each do |song|
      song_arr << song.genre
    end
    song_arr
  end

  def self.all
    @@all
  end


end
