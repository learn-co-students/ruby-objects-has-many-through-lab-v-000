require "pry"
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(song_name, genre_name)
    # binding.pry
    song = Song.new(song_name, self, genre_name)
    genre = Genre.new(genre_name)
    @songs << song
    song
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

end
