class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = Array.new
  end

  def add_song(song)
    songs << song
    song.artist = self
  end
  
  # No need for an accessor
  #def songs
  #  @songs
  #end

  def genres
    self.songs.collect do |song|
      song.genre
    end
  end
end
