class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def self.all #all instances of ARTIST class
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []

    @@all << self
  end

  def new_song(song_name, genre)
    s = Song.new(song_name, self, genre)
    @songs << s
    song_name.artist = self unless song_name.artist = self

  end

end #<----- CLASS end
