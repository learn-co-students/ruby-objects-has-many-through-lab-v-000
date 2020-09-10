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

  def songs
      Song.all.select do |song|
      song.artist == self
      end
  end

  def new_song(title, genre)
    Song.new(title, self, genre) #song.new is creating a new song object with a string title for the name, the artist object(self) that this method is being called on(this is what self is), gnere object
  end

  def genres
    songs.collect do |song|#this is "has many through", artist has many genre through songs
      song.genre
    end
  end

end
