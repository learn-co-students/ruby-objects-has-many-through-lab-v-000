
class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |i|
      i.artist == self
    end
  end

  def genres
    self.songs.collect do |songs|
      songs.genre
    end 

  end


end
