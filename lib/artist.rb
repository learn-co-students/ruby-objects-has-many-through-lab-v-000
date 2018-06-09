require 'pry'

class Artist
attr_accessor :name, :songs
@@all = []

  def initialize (name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def genres
    @@all.collect do |song|
      song.genre # could need refactor
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end


end
