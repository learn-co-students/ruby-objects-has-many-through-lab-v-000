class Artist
attr_accessor :songs
  attr_reader :name

  def initialize(name)
    @name = name
    @songs=[]
  end

  # artist has many songs.
  def add_song(song)
    @songs << song
    song.artist = self
  end

  # artist has many genres through its songs
  def genres
    self.songs.collect do |song|
      song.genre
    end
  end

end
