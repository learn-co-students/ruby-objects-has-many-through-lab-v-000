class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) # adds self (includes Song and Genre instances) to Genre @songs array
    #binding.pry
  end
end
