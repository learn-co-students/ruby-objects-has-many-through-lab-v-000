class Genre

  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end
  
  def add_song(song)
    unless self.songs.any? { |saved_song| saved_song == song }
      @songs << song
    end
  end

  def artists
    self.songs.collect {|song| song.artist}
  end
  
end