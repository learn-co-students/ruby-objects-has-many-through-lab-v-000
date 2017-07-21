class Song
  attr_accessor :name, :artist
  attr_reader :genre

  def initialize(name, genre)
    self.name = name
    self.genre = genre
  end

  def genre=(genre)
    @genre = genre
    genre.songs.push(self) unless genre.songs.include?(self)
  end
end
