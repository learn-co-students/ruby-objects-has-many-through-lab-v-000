class Song 
  attr_accessor :name, :artist, :genre

  def initialize(name, song_genre)
    @name = name
    @genre = song_genre
    
    song_genre.add_song(self)
  end
  
  
end 