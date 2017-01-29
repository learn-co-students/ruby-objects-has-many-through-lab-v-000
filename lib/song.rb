class Song

  attr_reader :name, :genre
  attr_accessor :artist

  def initialize(name, genre)
    @name = name
    genre.add_song(self)
  end

  # def artist=(name)
  #  Artist.find_or_create_by_name(name)
  #end


end
