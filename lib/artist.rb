require "pry"
class Artist
  attr_accessor :name, :songs

  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    @@all<<self
  end

  def self.all
    @@all
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

  def new_song(song_name, genre)
    song=Song.new(song_name, self, genre)
  end

  def self.songs
    Song.all.select {|song| song.artist==self}
  end
  #
  # def add_song(song)
  #   @songs<<song
  #   song.artist=self
  # end





end
