class Song
  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    self.genre.add_song(self)
  end



  # def genres
  #   @songs.collect do |song|
  #     song.genre
  #   end
  # end

end
