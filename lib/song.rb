#The Song model:
#A song should be initialized with a name and a genre.
#The initialize method should associate that song to
#the genre passed in as an argument. How can you associate a
#song to a genre? A song needs a "genre" attribute.
#Try creating an attr_accessor for genre. Genres also need
#to know about songs. You'll need to create a Genre#add_song method.
#Let's come back to this in a minute.
class Song
  attr_accessor :name, :artist, :genre

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
end
