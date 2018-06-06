class Artist

  attr_accessor :name, :songs, :genres

  @@all = [];

  def initialize(name)
    @name = name;
    @songs = [];
    @genres = [];
    @@all << self;
  end

  def new_song(name, genre)
    Song.new(name, self, genre);
  end

  def songs
    @songs;
  end

  def genres
    songs.map { |song| song.genre}
  end

  def self.all
    @@all;
  end

end
