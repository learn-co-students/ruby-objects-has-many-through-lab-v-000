require 'pry'
class Genre
  attr_reader :name

  @@all=[]

  def self.all
    @@all
  end

  def initialize(name)
    @name=name
    @@all<<self
  end

  def new_song(name, artist)
    song=Song.new(name,artist,self)
    song
  end

  def songs
    res=[]
    Song.all.each do |song|
      if song.genre==self
        res<<song
      end
    end
    res
  end

  def artists
    res=[]
    self.songs.each do |song|
      res<<song.artist
    end
    res
  end


end
