class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song     #add song to own collection
    song.artist = self    # add artist to song's artist
  end

  def songs
    @songs
  end

  def genres
    @songs.collect {|song| song.genre}.uniq
  end 
end
