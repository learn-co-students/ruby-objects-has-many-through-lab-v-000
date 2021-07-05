class Genre
attr_accessor :name, :songs

@@all = []

  def initialize (name)
    @name = name
    @songs = []
    self.save
  end

  def add_song (song)
    @songs << song
    song.genre = self
  end

  def artists
    @songs.collect do |song|
      song.artist
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

end
