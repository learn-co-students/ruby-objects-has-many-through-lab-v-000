require 'pry'
class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def new_song(song, genre)
    genre = Genre.new(genre)
    song = Song.new(song, self, genre)
    @songs << song
  end
  
  
  # describe "#new_song" do
  #   it "given a name and genre, creates a new song associated with that artist" do
  #     jay_z = Artist.new("Jay-Z")
  #     rap = Genre.new("rap")
  #     ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end
  
  def genres
    songs.collect do |song|
      song.genre
    end
  end
  
  
  
  
  
end