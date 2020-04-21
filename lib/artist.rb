class Artist
  attr_reader :name
  attr_accessor :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def new_song(name, genre)
    Song.new(name,self,genre)
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def genres
    @songs.map{|song| song.genre}.uniq
  end
end
