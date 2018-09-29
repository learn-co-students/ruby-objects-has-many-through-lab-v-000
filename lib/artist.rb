require 'pry'
class Artist
  
  attr_accessor :name, :genre, :songs
  
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
    genre = Genre.new(genre_name)
    new_song= Song.new(song_name, self.name, genre)
    @songs << new_song
  end
  
  
  
  
  
  # describe "#new_song" do
  #   it "given a name and genre, creates a new song associated with that artist" do
  #     jay_z = Artist.new("Jay-Z")
  #     rap = Genre.new("rap")
  #     ninety_nine_problems = jay_z.new_song("Ninety Nine Problems", rap)

  
  
  
  
  
  
  
end