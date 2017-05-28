#create class Song and initilize with aritist and genre

class Song

  attr_accessor :name, :genre, :artist

  def initialize(name,genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end
