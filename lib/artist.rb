class Artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
    song.
  end

end
