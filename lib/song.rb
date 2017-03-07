class Song
    #attributes
    attr_accessor :title, :artist, :genre

    #initialize
    def initialize (title, genre)
      @genre = genre
      @title = title
      genre.add_song(self)
    end

end
