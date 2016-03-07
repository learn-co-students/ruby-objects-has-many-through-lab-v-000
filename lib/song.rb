class Song
  attr_accessor :artist
  attr_reader :name, :genre

  #///CLASS METHODS ///#

  #///INSTANCE METHODS ///#
  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self)
  end
  
end