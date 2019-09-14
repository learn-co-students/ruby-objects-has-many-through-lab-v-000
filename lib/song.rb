class Song

  attr_accessor :name, :artist, :genre

  #when you creat a song, all you specify is the name and the genre
  #the song gets automatically added to an array inside a genre instance through #add_song genre instance method
  #you tell the genre instance about the song and the genre instance adds that song to its list
  def initialize(name,genre)
    @name = name
    @genre = genre #the genre instance is set equal to the genre attribute of the song instance, creating a reciprocal relationship between song and genre
    genre.add_song(self)#takes the genre instance, and accesses its instance method
    #this takes the song and adds it to the genre's song list
    #this connects genre and song reciprocally, this creates the belongs to relationship with genre
  end


end
