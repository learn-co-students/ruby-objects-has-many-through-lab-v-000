class Genre

  attr_accessor :name, :songs, :artist

  @@all_genre = []

  def initialize(name)
    @name = name
    @@all_genre << self
  end

  def self.all
    @@all_genre
  end  

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    Song.all.map do |songs|
      songs.artist
    end
  end



end
