class Artist
attr_accessor :name, :songs
@@all = []

  def initialize (name)
    @name = name
    @songs = []
    self.save
  end

  def add_song (song)
    @songs << song
    song.artist = self
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end


end
