class Artist
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name  #instance variable stores the name string
    @@all << self #storing the initialized artist object (self) in the class variable (@@all)
  end

  def new_song(title, genre)
    Song.new = (title, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
      end
  end


end
