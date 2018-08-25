class Genre
  attr_accessor :name

  @@all = []

  #instantiates a new Genre object with a name and adds it to the class variable self for storage
  def initialize(name)
    @name = name
    @@all << self
  end

  #instantiates a new song with a song name and artist through the Genre class
  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  #identifies which songs belong to the genre being checked
  def songs
    Song.all.select {|song_name| song_name.genre == self}
  end

  #utilizes #songs to identify which artists are included in the returned list
  def artists
    self.songs.map {|song| song.artist}
  end

  #allows user to see which genres have been created
  def self.all
    @@all
  end
end
