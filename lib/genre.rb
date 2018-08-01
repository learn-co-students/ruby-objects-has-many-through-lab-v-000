class Genre
  attr_accessor :name, :artist

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

def self.all
  @@all
end


def songs
  Song.all.select{|song| song.artist}
end

  def artists
    Song.all.collect do |song|
      song.artist
    end
  end
end
