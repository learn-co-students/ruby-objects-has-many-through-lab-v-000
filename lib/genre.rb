require 'pry'
class Genre
  attr_accessor :name, :artist, :songs, :artists #, :genre, :song, 

  def initialize(name)
    @name = name
    @songs = []
    #@artists = []
    #@genres = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  # def add_song(song)
  #   song.genre = self
  #   @songs << song
  # end

#   def genre=(genre)
#    # song.genre = self
#     @genre << song.genre
#     #@songs << song.genre
#   end

  def artists
    #@artists << song.artist
    @songs.collect do |song|
      song.artist
    end
    # @songs.collect do |artist|
    #   #song.artist
    #   artist
    # end

  end


end