class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    self.songs << self


  end

end #<----- CLASS end
