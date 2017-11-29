class Artist

  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    raise AssociationTypeMismatchError, "Song class is expected" if !song.is_a?(Song)
    @songs << song unless self.songs.include?(song)
    song.artist = self
    song.genre.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.each {|song| @genres << song.genre}
    @genres
  end


end
