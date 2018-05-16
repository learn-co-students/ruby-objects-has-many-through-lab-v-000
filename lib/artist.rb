class Artist 
  attr_accessor :name, :artist
  @@all = []
  def initialize (name)
    @name = name 
    @@all << self
  end
  def self.all
    @@all
  end 
  def new_song(name,genre)
    song = Song.new(name,self,genre)
    song.artist = self 
  end
  def songs 
    @@all.select do |song|
    song.artist == self
    end 
  end 
  def genres 
    @@all.select do |song|
    song.genre
    end 
  end 
end 
  