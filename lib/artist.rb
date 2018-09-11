class Artist

  attr_accessor :name

  @@all = []

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    Song.all.collect do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)

    # binding.pry
    Song.new(name, self, genre)

  end

end
