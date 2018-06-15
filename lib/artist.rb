class Artist

  attr_accessor :genre, :artist, :songs

@@all=[]
  def initialize(name)
    @name=name
    @@all<<self
  end

  def name
    @name
  end

  def self.all
    @@all
  end

  def new_song(title, genre)
    Song.new(title,self,genre)
  end

  def songs
    Song.all.select do |song|
      song.artist== self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end






end
