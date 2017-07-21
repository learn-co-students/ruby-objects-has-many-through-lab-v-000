class Genre
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def artists
    self.songs.collect{|song| song.artist}.uniq
  end
end
