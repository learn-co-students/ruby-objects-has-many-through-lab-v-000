class Song


  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
end

def artists
  self.songs.collect {|song|song.artist}
end
end
