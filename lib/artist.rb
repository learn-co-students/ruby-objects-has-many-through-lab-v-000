require 'pry'

class Artist
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    song = Song.new(title, self, genre)
    song
  end

  def songs
    Song.all.select do |song|
      song.artist.name == self.name
    end
  end

  def genres
    self.songs.collect{|s| s.genre}
  end
end
