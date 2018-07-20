

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    song = Song.new(name, artist, self)
  end

  def songs
    Song.all.do |song|
      song.genre = self
    end
  end

end
