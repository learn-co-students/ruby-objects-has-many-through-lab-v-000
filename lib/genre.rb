class Genre
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    self.songs << song if song.class == Song # add the song argument to the array for the instance variable songs if the song argument is an instance of the Song class
    # => return?
  end

  def artists
    self.songs.collect { |song| song.artist }
  end

end
