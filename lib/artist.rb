class Artist

  attr_accessor :name, :songs

  def initialize(name, songs = [])
    @name = name
    @songs = songs
  end


  def add_song(song)
    @songs << song
    song.artist = self
  end


  def songs
    @songs
  end


  def genres
    self.songs.collect do |song|
      song.genre
    end
  end


end
