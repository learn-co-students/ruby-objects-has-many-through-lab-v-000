class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.songs << self unless self.genre.songs.include?(self)
  end



end  # End of Class
