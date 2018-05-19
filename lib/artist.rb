require 'pry'
class Artist

  attr_accessor :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    @genre = genre
    @name = name
    Song.new(name,self,genre)
  end

  def songs
    Song.all.select do |songs|
      songs.artist == self
    end
  end

  def genres
    Genre.all.collect do |genres|
      genres
    end
  end


end
