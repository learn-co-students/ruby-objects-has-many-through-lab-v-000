class Genre
  attr_accessor :name, :artist, :genre, :songs
  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
  end

  def self.all
    @@all
  end

  def self.songs(artist)
    @@all.collect do |genre|
      genre.artist.song
    end
  end
end
