class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_song(song_name, genre)
    song = Song.new(song_name, self , genre)
    @songs << song
    song.artist = self
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end
end