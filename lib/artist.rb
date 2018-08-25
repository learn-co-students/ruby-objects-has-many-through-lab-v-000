class Artist
  attr_accessor :name
  @@all = []

  #instantiates a new Artist object with a provided name and stores it in the
  #@@all class variable array
  def initialize(name)
    @name = name
    @@all << self
  end

  #the artist can create a new song with a provided name and genre
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  #displays all songs belonging to the artist being checked
  def songs
    Song.all.select {|song| song.artist == self}
  end

  #displays all genres of the song list created in #songs
  def genres
    self.songs.map {|x| x.genre}
  end

  #allows user to see all created Artist
  def self.all
    @@all
  end
end
