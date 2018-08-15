class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end

  def self.all
    @@all = []
  end

  def new_song(artist, song)
    Song.new(self, artist, song)
  end
end
