class Song
  @@all = []
  attr_reader :name, :artist
  attr_accessor :genre

  def initialize(name, artist, genre )
    @name   = name
    @genre  = genre
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  # def genre
  #   genres = Genre.all
  #   if genres.include?(@genre)
  #     @genre
  #   else
  #     self.genre = Genre.new("#{@genre}")
  #   end
  # end
  #
  # def genre=(genre)
  #
  # end


  #questions: where should the Genre object be generated? an artist creates a
  #new song, so should a song create a new genre? song is the middle man in
  #this example and artist has many genres through songs, and a genre has
  #many artists through songs?
end
